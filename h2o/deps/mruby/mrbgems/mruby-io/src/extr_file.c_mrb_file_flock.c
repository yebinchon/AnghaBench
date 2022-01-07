
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;





 int E_NOTIMP_ERROR ;
 int LOCK_NB ;
 int errno ;
 int flock (int,int) ;
 int mrb_false_value () ;
 scalar_t__ mrb_fixnum (int ) ;
 int mrb_fixnum_value (int ) ;
 int mrb_get_args (int *,char*,int*) ;
 int mrb_io_fileno (int *,int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_sys_fail (int *,char*) ;

mrb_value
mrb_file_flock(mrb_state *mrb, mrb_value self)
{



  mrb_int operation;
  int fd;

  mrb_get_args(mrb, "i", &operation);
  fd = (int)mrb_fixnum(mrb_io_fileno(mrb, self));

  while (flock(fd, (int)operation) == -1) {
    switch (errno) {
      case 129:

        break;
      case 130:

      case 128:

        if (operation & LOCK_NB) {
          return mrb_false_value();
        }

      default:
        mrb_sys_fail(mrb, "flock failed");
        break;
    }
  }

  return mrb_fixnum_value(0);
}
