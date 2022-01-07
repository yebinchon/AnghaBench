
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct section {int dummy; } ;
struct TYPE_2__ {int e_shnum; } ;


 TYPE_1__ ehdr ;
 int sec_name (int) ;
 struct section* secs ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static struct section *sec_lookup(const char *secname)
{
 int i;

 for (i = 0; i < ehdr.e_shnum; i++)
  if (strcmp(secname, sec_name(i)) == 0)
   return &secs[i];

 return ((void*)0);
}
