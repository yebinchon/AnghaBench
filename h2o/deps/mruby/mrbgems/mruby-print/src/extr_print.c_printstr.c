
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int DWORD ;


 int CP_UTF8 ;
 int GetStdHandle (int ) ;
 int MultiByteToWideChar (int ,int ,char*,int,scalar_t__*,int) ;
 scalar_t__ RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 int STD_OUTPUT_HANDLE ;
 int WriteConsoleW (int ,scalar_t__*,int,int *,int *) ;
 int fflush (int ) ;
 int fileno (int ) ;
 int fwrite (char*,scalar_t__,int,int ) ;
 scalar_t__ isatty (int ) ;
 int mrb_free (int *,scalar_t__*) ;
 scalar_t__ mrb_malloc (int *,int) ;
 scalar_t__ mrb_string_p (int ) ;
 int stdout ;

__attribute__((used)) static void
printstr(mrb_state *mrb, mrb_value obj)
{
  if (mrb_string_p(obj)) {
      fwrite(RSTRING_PTR(obj), RSTRING_LEN(obj), 1, stdout);
    fflush(stdout);
  }
}
