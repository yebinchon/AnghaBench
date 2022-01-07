
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int title_w ;
typedef int WCHAR ;


 int GetConsoleTitleW (int *,int) ;
 int MAX_TITLE_LENGTH ;
 int process_title ;
 scalar_t__ uv__convert_utf16_to_utf8 (int *,int,int *) ;

__attribute__((used)) static int uv__get_process_title(void) {
  WCHAR title_w[MAX_TITLE_LENGTH];

  if (!GetConsoleTitleW(title_w, sizeof(title_w) / sizeof(WCHAR))) {
    return -1;
  }

  if (uv__convert_utf16_to_utf8(title_w, -1, &process_title) != 0)
    return -1;

  return 0;
}
