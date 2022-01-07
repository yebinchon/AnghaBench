
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int* git_win32_path ;


 int ERROR_FILENAME_EXCED_RANGE ;
 int INT_MAX ;
 int SetLastError (int ) ;
 int memmove (int*,int*,int) ;
 int* path__skip_prefix (int*) ;

int git_win32_path_canonicalize(git_win32_path path)
{
 wchar_t *base, *from, *to, *next;
 size_t len;

 base = to = path__skip_prefix(path);


 for (from = path; from < to; from++) {
  if (*from == L'/')
   *from = L'\\';
 }

 while (*from) {
  for (next = from; *next; ++next) {
   if (*next == L'/') {
    *next = L'\\';
    break;
   }

   if (*next == L'\\')
    break;
  }

  len = next - from;

  if (len == 1 && from[0] == L'.')
                                      ;

  else if (len == 2 && from[0] == L'.' && from[1] == L'.') {
   if (to == base) {

    if (*next == L'\\')
     len++;

    base = to;
   } else {

    while (to > base && to[-1] == L'\\') to--;
    while (to > base && to[-1] != L'\\') to--;
   }
  } else {
   if (*next == L'\\' && *from != L'\\')
    len++;

   if (to != from)
    memmove(to, from, sizeof(wchar_t) * len);

   to += len;
  }

  from += len;

  while (*from == L'\\') from++;
 }


 while (to > base && to[-1] == L'\\') to--;

 *to = L'\0';

 if ((to - path) > INT_MAX) {
  SetLastError(ERROR_FILENAME_EXCED_RANGE);
  return -1;
 }

 return (int)(to - path);
}
