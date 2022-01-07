
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_2__ {int pidfile; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LOG_DEBUG (char*) ;
 int O_RDWR ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ chdir (char*) ;
 int close (int) ;
 TYPE_1__ conf ;
 int dup2 (int,int) ;
 int errno ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int open (char*,int ,int ) ;
 int printf (char*,scalar_t__) ;
 scalar_t__ setsid () ;
 int strerror (int ) ;
 int umask (int ) ;
 int write_pid_file (int ,scalar_t__) ;

__attribute__((used)) static void
daemonize (void)
{
  pid_t pid, sid;
  int fd;


  pid = fork ();

  if (pid < 0)
    exit (EXIT_FAILURE);
  if (pid > 0) {
    write_pid_file (conf.pidfile, pid);
    printf ("Daemonized GoAccess: %d\n", pid);
    exit (EXIT_SUCCESS);
  }

  umask (0);

  sid = setsid ();
  if (sid < 0) {
    LOG_DEBUG (("Unable to setsid: %s.\n", strerror (errno)));
    exit (EXIT_FAILURE);
  }



  if (chdir ("/") < 0) {
    LOG_DEBUG (("Unable to set chdir: %s.\n", strerror (errno)));
    exit (EXIT_FAILURE);
  }



  if ((fd = open ("/dev/null", O_RDWR, 0)) == -1) {
    LOG_DEBUG (("Unable to open /dev/null: %s.\n", strerror (errno)));
    exit (EXIT_FAILURE);
  }

  dup2 (fd, STDIN_FILENO);
  dup2 (fd, STDOUT_FILENO);
  dup2 (fd, STDERR_FILENO);
  if (fd > STDERR_FILENO) {
    close (fd);
  }
}
