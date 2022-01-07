
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__* backends ;
 int crypto_has_comp (char const*,int ,int ) ;
 int scnprintf (char*,int,char*,...) ;
 int strcmp (char const*,scalar_t__) ;

ssize_t zcomp_available_show(const char *comp, char *buf)
{
 bool known_algorithm = 0;
 ssize_t sz = 0;
 int i = 0;

 for (; backends[i]; i++) {
  if (!strcmp(comp, backends[i])) {
   known_algorithm = 1;
   sz += scnprintf(buf + sz, PAGE_SIZE - sz - 2,
     "[%s] ", backends[i]);
  } else {
   sz += scnprintf(buf + sz, PAGE_SIZE - sz - 2,
     "%s ", backends[i]);
  }
 }





 if (!known_algorithm && crypto_has_comp(comp, 0, 0) == 1)
  sz += scnprintf(buf + sz, PAGE_SIZE - sz - 2,
    "[%s] ", comp);

 sz += scnprintf(buf + sz, PAGE_SIZE - sz, "\n");
 return sz;
}
