
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int EAGAIN ;
 int EINTR ;
 int WEXITSTATUS (int) ;
 int WUNTRACED ;
 int errno ;
 int execv (char* const,char* const*) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,int,char*) ;
 int stderr ;
 char* strerror (int) ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int
shell_out(char * const argv[])
{
 int status, piderr;
 pid_t pid;

 pid = fork();

 if (pid < 0) {
  fprintf(stderr,
   "System error: `fork()` call failed (%d) - %s\n",
   errno, strerror(errno));
  exit(-1);
 }

 if (pid == 0) {
  execv(argv[0], argv);
 }

 do {
  piderr = waitpid(pid, &status, WUNTRACED);
 } while (piderr < 0 && (errno == EAGAIN || errno == EINTR));

 return WEXITSTATUS(status);
}
