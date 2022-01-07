
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSANOW ;
 int UV_EBUSY ;
 int UV__ERR (int) ;
 int errno ;
 int orig_termios ;
 int orig_termios_fd ;
 scalar_t__ tcsetattr (int,int ,int *) ;
 int termios_spinlock ;
 int uv_spinlock_trylock (int *) ;
 int uv_spinlock_unlock (int *) ;

int uv_tty_reset_mode(void) {
  int saved_errno;
  int err;

  saved_errno = errno;
  if (!uv_spinlock_trylock(&termios_spinlock))
    return UV_EBUSY;

  err = 0;
  if (orig_termios_fd != -1)
    if (tcsetattr(orig_termios_fd, TCSANOW, &orig_termios))
      err = UV__ERR(errno);

  uv_spinlock_unlock(&termios_spinlock);
  errno = saved_errno;

  return err;
}
