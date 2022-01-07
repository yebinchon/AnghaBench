
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int errmsg; } ;
typedef TYPE_1__ uv_lib_t ;
typedef int LPSTR ;
typedef scalar_t__ DWORD_PTR ;
typedef char CHAR ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_STRING ;
 int FormatMessageA (int,char const*,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void uv__format_fallback_error(uv_lib_t* lib, int errorno){
  static const CHAR fallback_error[] = "error: %1!d!";
  DWORD_PTR args[1];
  args[0] = (DWORD_PTR) errorno;

  FormatMessageA(FORMAT_MESSAGE_FROM_STRING |
                 FORMAT_MESSAGE_ARGUMENT_ARRAY |
                 FORMAT_MESSAGE_ALLOCATE_BUFFER,
                 fallback_error, 0, 0,
                 (LPSTR) &lib->errmsg,
                 0, (va_list*) args);
}
