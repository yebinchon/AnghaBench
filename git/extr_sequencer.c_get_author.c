
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_commit_header (char const*,char*,size_t*) ;
 char* xmemdupz (char const*,size_t) ;

__attribute__((used)) static char *get_author(const char *message)
{
 size_t len;
 const char *a;

 a = find_commit_header(message, "author", &len);
 if (a)
  return xmemdupz(a, len);

 return ((void*)0);
}
