
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_oflag; } ;
typedef int sigset_t ;


 int CATCH_EINTR (int) ;
 int OPOST ;
 int SIGIO ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int TCSAFLUSH ;
 int errno ;
 int generic_write (int,char const*,int,int *) ;
 scalar_t__ isatty (int) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;

int generic_console_write(int fd, const char *buf, int n)
{
 sigset_t old, no_sigio;
 struct termios save, new;
 int err;

 if (isatty(fd)) {
  sigemptyset(&no_sigio);
  sigaddset(&no_sigio, SIGIO);
  if (sigprocmask(SIG_BLOCK, &no_sigio, &old))
   goto error;

  CATCH_EINTR(err = tcgetattr(fd, &save));
  if (err)
   goto error;
  new = save;





  new.c_oflag |= OPOST;
  CATCH_EINTR(err = tcsetattr(fd, TCSAFLUSH, &new));
  if (err)
   goto error;
 }
 err = generic_write(fd, buf, n, ((void*)0));




 if (isatty(fd)) {
  CATCH_EINTR(tcsetattr(fd, TCSAFLUSH, &save));
  sigprocmask(SIG_SETMASK, &old, ((void*)0));
 }

 return err;
error:
 return -errno;
}
