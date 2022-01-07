
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_RUNTIME_ERROR ;
 int mrb_io_test_io_setup (int *,int ) ;
 int mrb_raise (int *,int ,char*) ;
 int symlink (char*,char*) ;

__attribute__((used)) static mrb_value
mrb_io_test_file_setup(mrb_state *mrb, mrb_value self)
{
  mrb_value ary = mrb_io_test_io_setup(mrb, self);

  if (symlink("/usr/bin", "test-bin") == -1) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "can't make a symbolic link");
  }


  return ary;
}
