
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ MRB_TT_STRING ;
 int RSTRING_PTR (int ) ;
 int mrb_gv_get (int *,int ) ;
 int mrb_gv_set (int *,int ,int ) ;
 int mrb_intern_cstr (int *,char*) ;
 int mrb_nil_value () ;
 scalar_t__ mrb_type (int ) ;
 int remove (int ) ;

__attribute__((used)) static mrb_value
mrb_io_test_io_cleanup(mrb_state *mrb, mrb_value self)
{
  mrb_value rfname = mrb_gv_get(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_rfname"));
  mrb_value wfname = mrb_gv_get(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_wfname"));
  mrb_value symlinkname = mrb_gv_get(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_symlinkname"));
  mrb_value socketname = mrb_gv_get(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_socketname"));

  if (mrb_type(rfname) == MRB_TT_STRING) {
    remove(RSTRING_PTR(rfname));
  }
  if (mrb_type(wfname) == MRB_TT_STRING) {
    remove(RSTRING_PTR(wfname));
  }
  if (mrb_type(symlinkname) == MRB_TT_STRING) {
    remove(RSTRING_PTR(symlinkname));
  }
  if (mrb_type(socketname) == MRB_TT_STRING) {
    remove(RSTRING_PTR(socketname));
  }

  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_rfname"), mrb_nil_value());
  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_wfname"), mrb_nil_value());
  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_symlinkname"), mrb_nil_value());
  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_socketname"), mrb_nil_value());
  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_msg"), mrb_nil_value());

  return mrb_nil_value();
}
