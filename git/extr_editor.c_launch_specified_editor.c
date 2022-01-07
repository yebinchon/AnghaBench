
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct child_process {char const** argv; char const* const* env; int use_shell; char* trace2_child_class; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_IGN ;
 char* _ (char*) ;
 scalar_t__ advice_waiting_for_editor ;
 int error (char*,...) ;
 int error_errno (char*,char const*) ;
 int fflush (int ) ;
 int finish_command (struct child_process*) ;
 int fprintf (int ,char*,char const) ;
 scalar_t__ is_terminal_dumb () ;
 scalar_t__ isatty (int) ;
 int raise (int) ;
 char const* real_path (char const*) ;
 int sigchain_pop (int) ;
 int sigchain_push (int,int ) ;
 scalar_t__ start_command (struct child_process*) ;
 int stderr ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int term_clear_line () ;

__attribute__((used)) static int launch_specified_editor(const char *editor, const char *path,
       struct strbuf *buffer, const char *const *env)
{
 if (!editor)
  return error("Terminal is dumb, but EDITOR unset");

 if (strcmp(editor, ":")) {
  const char *args[] = { editor, real_path(path), ((void*)0) };
  struct child_process p = CHILD_PROCESS_INIT;
  int ret, sig;
  int print_waiting_for_editor = advice_waiting_for_editor && isatty(2);

  if (print_waiting_for_editor) {







   const char term = is_terminal_dumb() ? '\n' : ' ';

   fprintf(stderr,
    _("hint: Waiting for your editor to close the file...%c"),
    term);
   fflush(stderr);
  }

  p.argv = args;
  p.env = env;
  p.use_shell = 1;
  p.trace2_child_class = "editor";
  if (start_command(&p) < 0)
   return error("unable to start editor '%s'", editor);

  sigchain_push(SIGINT, SIG_IGN);
  sigchain_push(SIGQUIT, SIG_IGN);
  ret = finish_command(&p);
  sig = ret - 128;
  sigchain_pop(SIGINT);
  sigchain_pop(SIGQUIT);
  if (sig == SIGINT || sig == SIGQUIT)
   raise(sig);
  if (ret)
   return error("There was a problem with the editor '%s'.",
     editor);

  if (print_waiting_for_editor && !is_terminal_dumb())




   term_clear_line();
 }

 if (!buffer)
  return 0;
 if (strbuf_read_file(buffer, path, 0) < 0)
  return error_errno("could not read file '%s'", path);
 return 0;
}
