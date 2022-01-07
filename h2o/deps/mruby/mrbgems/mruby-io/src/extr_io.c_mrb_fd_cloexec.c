
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int errno ;
 int fcntl (int,int ,...) ;
 int mrb_bug (int *,char*,int ,int ,...) ;
 int mrb_fixnum_value (int) ;

__attribute__((used)) static void
mrb_fd_cloexec(mrb_state *mrb, int fd)
{
}
