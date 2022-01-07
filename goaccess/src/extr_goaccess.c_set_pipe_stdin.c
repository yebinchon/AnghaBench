
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int real_time_html; scalar_t__ output_stdout; } ;
struct TYPE_3__ {int * pipe; } ;
typedef int FILE ;


 int FATAL (char*,...) ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int add_dash_filename () ;
 TYPE_2__ conf ;
 int dup (scalar_t__) ;
 int dup2 (scalar_t__,int ) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int * fdopen (int,char*) ;
 scalar_t__ fileno (int *) ;
 int free (char*) ;
 scalar_t__ freopen (char*,char*,int *) ;
 TYPE_1__* glog ;
 int open_term (char**) ;
 int * stdin ;
 int strerror (int ) ;

__attribute__((used)) static void
set_pipe_stdin (void)
{
  char *term = ((void*)0);
  FILE *pipe = stdin;
  int fd1, fd2;







  if ((fd1 = open_term (&term)) == -1)
    goto out;

  if ((fd2 = dup (fileno (stdin))) == -1)
    FATAL ("Unable to dup stdin: %s", strerror (errno));

  pipe = fdopen (fd2, "r");
  if (freopen (term, "r", stdin) == 0)
    FATAL ("Unable to open input from TTY");
  if (fileno (stdin) != 0)
    (void) dup2 (fileno (stdin), 0);

  add_dash_filename ();


  if (conf.output_stdout && !conf.real_time_html)
    goto out;


  if (fcntl (fd2, F_SETFL, fcntl (fd2, F_GETFL, 0) | O_NONBLOCK) == -1)
    FATAL ("Unable to set fd as non-blocking: %s.", strerror (errno));
out:

  glog->pipe = pipe;
  free (term);
}
