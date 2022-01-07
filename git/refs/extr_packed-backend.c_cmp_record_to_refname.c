
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hexsz; } ;


 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int cmp_record_to_refname(const char *rec, const char *refname)
{
 const char *r1 = rec + the_hash_algo->hexsz + 1;
 const char *r2 = refname;

 while (1) {
  if (*r1 == '\n')
   return *r2 ? -1 : 0;
  if (!*r2)
   return 1;
  if (*r1 != *r2)
   return (unsigned char)*r1 < (unsigned char)*r2 ? -1 : +1;
  r1++;
  r2++;
 }
}
