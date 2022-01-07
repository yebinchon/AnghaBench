
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int FILE ;


 int RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 int fwrite (int ,int ,int,int *) ;
 scalar_t__ mrb_string_p (int ) ;
 int putc (char,int *) ;

__attribute__((used)) static void
printstr(mrb_value obj, FILE *stream)
{
  if (mrb_string_p(obj)) {
    fwrite(RSTRING_PTR(obj), RSTRING_LEN(obj), 1, stream);
    putc('\n', stream);
  }
}
