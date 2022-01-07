
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int assert (int) ;

__attribute__((used)) static wchar_t* win32_walkpath(wchar_t *path, wchar_t *buf, size_t buflen)
{
 wchar_t term, *base = path;

 assert(path && buf && buflen);

 term = (*path == L'"') ? *path++ : L';';

 for (buflen--; *path && *path != term && buflen; buflen--)
  *buf++ = *path++;

 *buf = L'\0';

 while (*path == term || *path == L';')
  path++;

 return (path != base) ? path : ((void*)0);
}
