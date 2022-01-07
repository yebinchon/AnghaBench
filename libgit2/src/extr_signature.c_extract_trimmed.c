
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* git__substrdup (char const*,size_t) ;
 scalar_t__ is_crud (unsigned char) ;

__attribute__((used)) static char *extract_trimmed(const char *ptr, size_t len)
{
 while (len && is_crud((unsigned char)ptr[0])) {
  ptr++; len--;
 }

 while (len && is_crud((unsigned char)ptr[len - 1])) {
  len--;
 }

 return git__substrdup(ptr, len);
}
