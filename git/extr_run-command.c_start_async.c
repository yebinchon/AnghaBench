
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async {int in; int out; scalar_t__ pid; int proc_in; int proc_out; int tid; int data; int (* proc ) (int,int,int ) ;} ;


 int _ (char*) ;
 int async_die_counter ;
 int async_die_is_recursing ;
 int async_key ;
 int close (int) ;
 int close_pair (int*) ;
 int die_async ;
 int error (int ,int ) ;
 int error_errno (char*) ;
 int exit (int) ;
 int fflush (int *) ;
 scalar_t__ fork () ;
 int git_atexit_clear () ;
 int main_thread ;
 int main_thread_set ;
 int mark_child_for_cleanup (scalar_t__,int *) ;
 scalar_t__ pipe (int*) ;
 int process_is_async ;
 int pthread_create (int *,int *,int ,struct async*) ;
 int pthread_key_create (int *,int *) ;
 int pthread_self () ;
 int run_thread ;
 int set_cloexec (int) ;
 int set_die_is_recursing_routine (int ) ;
 int set_die_routine (int ) ;
 int strerror (int) ;
 int stub1 (int,int,int ) ;

int start_async(struct async *async)
{
 int need_in, need_out;
 int fdin[2], fdout[2];
 int proc_in, proc_out;

 need_in = async->in < 0;
 if (need_in) {
  if (pipe(fdin) < 0) {
   if (async->out > 0)
    close(async->out);
   return error_errno("cannot create pipe");
  }
  async->in = fdin[1];
 }

 need_out = async->out < 0;
 if (need_out) {
  if (pipe(fdout) < 0) {
   if (need_in)
    close_pair(fdin);
   else if (async->in)
    close(async->in);
   return error_errno("cannot create pipe");
  }
  async->out = fdout[0];
 }

 if (need_in)
  proc_in = fdin[0];
 else if (async->in)
  proc_in = async->in;
 else
  proc_in = -1;

 if (need_out)
  proc_out = fdout[1];
 else if (async->out)
  proc_out = async->out;
 else
  proc_out = -1;
 if (!main_thread_set) {




  main_thread_set = 1;
  main_thread = pthread_self();
  pthread_key_create(&async_key, ((void*)0));
  pthread_key_create(&async_die_counter, ((void*)0));
  set_die_routine(die_async);
  set_die_is_recursing_routine(async_die_is_recursing);
 }

 if (proc_in >= 0)
  set_cloexec(proc_in);
 if (proc_out >= 0)
  set_cloexec(proc_out);
 async->proc_in = proc_in;
 async->proc_out = proc_out;
 {
  int err = pthread_create(&async->tid, ((void*)0), run_thread, async);
  if (err) {
   error(_("cannot create async thread: %s"), strerror(err));
   goto error;
  }
 }

 return 0;

error:
 if (need_in)
  close_pair(fdin);
 else if (async->in)
  close(async->in);

 if (need_out)
  close_pair(fdout);
 else if (async->out)
  close(async->out);
 return -1;
}
