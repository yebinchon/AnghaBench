
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_io_test_io_cleanup (int *,int ) ;
 int mrb_nil_value () ;
 int remove (char*) ;

__attribute__((used)) static mrb_value
mrb_io_test_file_cleanup(mrb_state *mrb, mrb_value self)
{
  mrb_io_test_io_cleanup(mrb, self);
  remove("test-bin");

  return mrb_nil_value();
}
