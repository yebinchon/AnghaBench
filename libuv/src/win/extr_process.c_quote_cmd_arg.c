
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 size_t wcslen (int const*) ;
 int wcsncpy (int*,int const*,size_t) ;
 int * wcspbrk (int const*,char*) ;
 int wcsrev (int*) ;

WCHAR* quote_cmd_arg(const WCHAR *source, WCHAR *target) {
  size_t len = wcslen(source);
  size_t i;
  int quote_hit;
  WCHAR* start;

  if (len == 0) {

    *(target++) = L'"';
    *(target++) = L'"';
    return target;
  }

  if (((void*)0) == wcspbrk(source, L" \t\"")) {

    wcsncpy(target, source, len);
    target += len;
    return target;
  }

  if (((void*)0) == wcspbrk(source, L"\"\\")) {




    *(target++) = L'"';
    wcsncpy(target, source, len);
    target += len;
    *(target++) = L'"';
    return target;
  }
  *(target++) = L'"';
  start = target;
  quote_hit = 1;

  for (i = len; i > 0; --i) {
    *(target++) = source[i - 1];

    if (quote_hit && source[i - 1] == L'\\') {
      *(target++) = L'\\';
    } else if(source[i - 1] == L'"') {
      quote_hit = 1;
      *(target++) = L'\\';
    } else {
      quote_hit = 0;
    }
  }
  target[0] = L'\0';
  wcsrev(start);
  *(target++) = L'"';
  return target;
}
