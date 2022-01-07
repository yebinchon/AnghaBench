
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_commit_header (char const*,char const*,size_t*) ;
 char* xmemdupz (char const*,size_t) ;

__attribute__((used)) static char *get_header(const char *msg, const char *key)
{
 size_t len;
 const char *v = find_commit_header(msg, key, &len);
 return v ? xmemdupz(v, len) : ((void*)0);
}
