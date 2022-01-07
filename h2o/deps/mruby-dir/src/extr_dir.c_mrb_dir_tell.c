
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_dir {int dir; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_IO_ERROR ;
 int E_NOTIMP_ERROR ;
 int mrb_dir_type ;
 int mrb_fixnum_value (scalar_t__) ;
 scalar_t__ mrb_get_datatype (int *,int ,int *) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 scalar_t__ telldir (int ) ;

mrb_value
mrb_dir_tell(mrb_state *mrb, mrb_value self)
{




  struct mrb_dir *mdir;
  mrb_int pos;

  mdir = (struct mrb_dir *)mrb_get_datatype(mrb, self, &mrb_dir_type);
  if (!mdir) return mrb_nil_value();
  if (!mdir->dir) {
    mrb_raise(mrb, E_IO_ERROR, "closed directory");
  }
  pos = (mrb_int)telldir(mdir->dir);
  return mrb_fixnum_value(pos);

}
