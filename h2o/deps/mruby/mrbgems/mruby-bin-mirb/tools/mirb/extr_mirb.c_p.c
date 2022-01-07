
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_5__ {int exc; } ;
typedef TYPE_1__ mrb_state ;


 scalar_t__ RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 int fputs (char*,int ) ;
 int fwrite (char*,int ,int,int ) ;
 int mrb_funcall (TYPE_1__*,int ,char*,int ) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (int ,int) ;
 int mrb_obj_as_string (TYPE_1__*,int ) ;
 int mrb_obj_value (int ) ;
 int mrb_string_p (int ) ;
 int putc (char,int ) ;
 int stdout ;
 int strlen (char*) ;

__attribute__((used)) static void
p(mrb_state *mrb, mrb_value obj, int prompt)
{
  mrb_value val;
  char* msg;

  val = mrb_funcall(mrb, obj, "inspect", 0);
  if (prompt) {
    if (!mrb->exc) {
      fputs(" => ", stdout);
    }
    else {
      val = mrb_funcall(mrb, mrb_obj_value(mrb->exc), "inspect", 0);
    }
  }
  if (!mrb_string_p(val)) {
    val = mrb_obj_as_string(mrb, obj);
  }
  msg = mrb_locale_from_utf8(RSTRING_PTR(val), (int)RSTRING_LEN(val));
  fwrite(msg, strlen(msg), 1, stdout);
  mrb_locale_free(msg);
  putc('\n', stdout);
}
