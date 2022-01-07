
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ argv; } ;
struct TYPE_4__ {char** argv; } ;
struct child_process {char** argv; int in; int out; int err; int pid; scalar_t__ clean_on_exit; scalar_t__ silent_exec_failure; scalar_t__ dir; scalar_t__ env; scalar_t__ use_shell; scalar_t__ git_cmd; scalar_t__ stdout_to_stderr; scalar_t__ no_stdout; scalar_t__ no_stderr; scalar_t__ no_stdin; TYPE_1__ env_array; TYPE_2__ args; } ;
struct child_err {int dummy; } ;
struct atfork_state {int old; } ;
struct argv_array {int * argv; } ;
typedef int cerr ;


 struct argv_array ARGV_ARRAY_INIT ;
 int CHILD_ERR_CHDIR ;
 int CHILD_ERR_ENOENT ;
 int CHILD_ERR_ERRNO ;
 int CHILD_ERR_SIGPROCMASK ;
 int CHILD_ERR_SILENT ;
 int ENOENT ;
 int ENOEXEC ;
 int NSIG ;
 int O_CLOEXEC ;
 int O_RDWR ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int SIG_SETMASK ;
 int _ (char*) ;
 int argv_array_clear (struct argv_array*) ;
 int atfork_parent (struct atfork_state*) ;
 int atfork_prepare (struct atfork_state*) ;
 scalar_t__ chdir (scalar_t__) ;
 int child_close (int) ;
 int child_close_pair (int*) ;
 int child_die (int ) ;
 int child_die_fn ;
 int child_dup2 (int,int) ;
 int child_err_spew (struct child_process*,struct child_err*) ;
 int child_error_fn ;
 int child_notifier ;
 int child_process_clear (struct child_process*) ;
 int child_warn_fn ;
 int close (int) ;
 int close_pair (int*) ;
 int die_errno (int ) ;
 int dup (int) ;
 int errno ;
 int error (char*,char*,char*,int ) ;
 int error_errno (char*,char*) ;
 int execve (int ,char* const*,char* const*) ;
 int fflush (int *) ;
 int fork () ;
 int free (char**) ;
 int mark_child_for_cleanup (int,struct child_process*) ;
 int mingw_spawnvpe (char*,char**,char**,scalar_t__,int,int,int) ;
 int open (char*,int) ;
 scalar_t__ pipe (int*) ;
 char** prep_childenv (scalar_t__) ;
 scalar_t__ prepare_cmd (struct argv_array*,struct child_process*) ;
 char** prepare_git_cmd (struct argv_array*,char**) ;
 char** prepare_shell_cmd (struct argv_array*,char**) ;
 int set_cloexec (int) ;
 int set_die_routine (int ) ;
 int set_error_routine (int ) ;
 int set_warn_routine (int ) ;
 scalar_t__ signal (int,scalar_t__) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int strerror (int) ;
 int trace2_child_exit (struct child_process*,int) ;
 int trace2_child_start (struct child_process*) ;
 int trace_run_command (struct child_process*) ;
 int wait_or_whine (int,char*,int ) ;
 int xread (int,struct child_err*,int) ;

int start_command(struct child_process *cmd)
{
 int need_in, need_out, need_err;
 int fdin[2], fdout[2], fderr[2];
 int failed_errno;
 char *str;

 if (!cmd->argv)
  cmd->argv = cmd->args.argv;
 if (!cmd->env)
  cmd->env = cmd->env_array.argv;






 need_in = !cmd->no_stdin && cmd->in < 0;
 if (need_in) {
  if (pipe(fdin) < 0) {
   failed_errno = errno;
   if (cmd->out > 0)
    close(cmd->out);
   str = "standard input";
   goto fail_pipe;
  }
  cmd->in = fdin[1];
 }

 need_out = !cmd->no_stdout
  && !cmd->stdout_to_stderr
  && cmd->out < 0;
 if (need_out) {
  if (pipe(fdout) < 0) {
   failed_errno = errno;
   if (need_in)
    close_pair(fdin);
   else if (cmd->in)
    close(cmd->in);
   str = "standard output";
   goto fail_pipe;
  }
  cmd->out = fdout[0];
 }

 need_err = !cmd->no_stderr && cmd->err < 0;
 if (need_err) {
  if (pipe(fderr) < 0) {
   failed_errno = errno;
   if (need_in)
    close_pair(fdin);
   else if (cmd->in)
    close(cmd->in);
   if (need_out)
    close_pair(fdout);
   else if (cmd->out)
    close(cmd->out);
   str = "standard error";
fail_pipe:
   error("cannot create %s pipe for %s: %s",
    str, cmd->argv[0], strerror(failed_errno));
   child_process_clear(cmd);
   errno = failed_errno;
   return -1;
  }
  cmd->err = fderr[0];
 }

 trace2_child_start(cmd);
 trace_run_command(cmd);

 fflush(((void*)0));


{
 int notify_pipe[2];
 int null_fd = -1;
 char **childenv;
 struct argv_array argv = ARGV_ARRAY_INIT;
 struct child_err cerr;
 struct atfork_state as;

 if (prepare_cmd(&argv, cmd) < 0) {
  failed_errno = errno;
  cmd->pid = -1;
  if (!cmd->silent_exec_failure)
   error_errno("cannot run %s", cmd->argv[0]);
  goto end_of_spawn;
 }

 if (pipe(notify_pipe))
  notify_pipe[0] = notify_pipe[1] = -1;

 if (cmd->no_stdin || cmd->no_stdout || cmd->no_stderr) {
  null_fd = open("/dev/null", O_RDWR | O_CLOEXEC);
  if (null_fd < 0)
   die_errno(_("open /dev/null failed"));
  set_cloexec(null_fd);
 }

 childenv = prep_childenv(cmd->env);
 atfork_prepare(&as);
 cmd->pid = fork();
 failed_errno = errno;
 if (!cmd->pid) {
  int sig;




  set_die_routine(child_die_fn);
  set_error_routine(child_error_fn);
  set_warn_routine(child_warn_fn);

  close(notify_pipe[0]);
  set_cloexec(notify_pipe[1]);
  child_notifier = notify_pipe[1];

  if (cmd->no_stdin)
   child_dup2(null_fd, 0);
  else if (need_in) {
   child_dup2(fdin[0], 0);
   child_close_pair(fdin);
  } else if (cmd->in) {
   child_dup2(cmd->in, 0);
   child_close(cmd->in);
  }

  if (cmd->no_stderr)
   child_dup2(null_fd, 2);
  else if (need_err) {
   child_dup2(fderr[1], 2);
   child_close_pair(fderr);
  } else if (cmd->err > 1) {
   child_dup2(cmd->err, 2);
   child_close(cmd->err);
  }

  if (cmd->no_stdout)
   child_dup2(null_fd, 1);
  else if (cmd->stdout_to_stderr)
   child_dup2(2, 1);
  else if (need_out) {
   child_dup2(fdout[1], 1);
   child_close_pair(fdout);
  } else if (cmd->out > 1) {
   child_dup2(cmd->out, 1);
   child_close(cmd->out);
  }

  if (cmd->dir && chdir(cmd->dir))
   child_die(CHILD_ERR_CHDIR);





  for (sig = 1; sig < NSIG; sig++) {

   if (signal(sig, SIG_DFL) == SIG_IGN)
    signal(sig, SIG_IGN);
  }

  if (sigprocmask(SIG_SETMASK, &as.old, ((void*)0)) != 0)
   child_die(CHILD_ERR_SIGPROCMASK);







  execve(argv.argv[1], (char *const *) argv.argv + 1,
         (char *const *) childenv);
  if (errno == ENOEXEC)
   execve(argv.argv[0], (char *const *) argv.argv,
          (char *const *) childenv);

  if (errno == ENOENT) {
   if (cmd->silent_exec_failure)
    child_die(CHILD_ERR_SILENT);
   child_die(CHILD_ERR_ENOENT);
  } else {
   child_die(CHILD_ERR_ERRNO);
  }
 }
 atfork_parent(&as);
 if (cmd->pid < 0)
  error_errno("cannot fork() for %s", cmd->argv[0]);
 else if (cmd->clean_on_exit)
  mark_child_for_cleanup(cmd->pid, cmd);
 close(notify_pipe[1]);
 if (xread(notify_pipe[0], &cerr, sizeof(cerr)) == sizeof(cerr)) {




  wait_or_whine(cmd->pid, cmd->argv[0], 0);
  child_err_spew(cmd, &cerr);
  failed_errno = errno;
  cmd->pid = -1;
 }
 close(notify_pipe[0]);

 if (null_fd >= 0)
  close(null_fd);
 argv_array_clear(&argv);
 free(childenv);
}
end_of_spawn:
 if (cmd->pid < 0) {
  trace2_child_exit(cmd, -1);

  if (need_in)
   close_pair(fdin);
  else if (cmd->in)
   close(cmd->in);
  if (need_out)
   close_pair(fdout);
  else if (cmd->out)
   close(cmd->out);
  if (need_err)
   close_pair(fderr);
  else if (cmd->err)
   close(cmd->err);
  child_process_clear(cmd);
  errno = failed_errno;
  return -1;
 }

 if (need_in)
  close(fdin[0]);
 else if (cmd->in)
  close(cmd->in);

 if (need_out)
  close(fdout[1]);
 else if (cmd->out)
  close(cmd->out);

 if (need_err)
  close(fderr[1]);
 else if (cmd->err)
  close(cmd->err);

 return 0;
}
