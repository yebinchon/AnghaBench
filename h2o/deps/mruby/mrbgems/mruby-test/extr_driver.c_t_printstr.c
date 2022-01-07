
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 int fflush (int ) ;
 int fwrite (char*,int ,int,int ) ;
 scalar_t__ mrb_string_p (int ) ;
 int stdout ;

__attribute__((used)) static void
t_printstr(mrb_state *mrb, mrb_value obj)
{
  char *s;
  mrb_int len;

  if (mrb_string_p(obj)) {
    s = RSTRING_PTR(obj);
    len = RSTRING_LEN(obj);
    fwrite(s, len, 1, stdout);
    fflush(stdout);
  }
}
