
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int _wcsnicmp (int *,int *,size_t) ;
 size_t wcslen (int *) ;

__attribute__((used)) static int file_info_cmp(WCHAR* str, WCHAR* file_name, size_t file_name_len) {
  size_t str_len;

  if (str == ((void*)0))
    return -1;

  str_len = wcslen(str);





  if (str_len != (file_name_len / sizeof(WCHAR)))
    return -1;

  return _wcsnicmp(str, file_name, str_len);
}
