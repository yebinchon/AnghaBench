
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int jv ;
typedef int HANDLE ;
typedef int FILE ;


 int CP_UTF8 ;
 size_t MultiByteToWideChar (int ,int ,char const*,int,scalar_t__*,size_t) ;
 int WriteConsoleW (int ,scalar_t__*,size_t,int *,int *) ;
 scalar_t__ _get_osfhandle (int ) ;
 int fileno (int *) ;
 int free (scalar_t__*) ;
 int fwrite (char const*,int,int,int *) ;
 scalar_t__* jv_mem_calloc (size_t,int) ;
 int jv_string_append_buf (int ,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void put_buf(const char *s, int len, FILE *fout, jv *strout, int is_tty) {
  if (strout) {
    *strout = jv_string_append_buf(*strout, s, len);
  } else {
  fwrite(s, 1, len, fout);

  }
}
