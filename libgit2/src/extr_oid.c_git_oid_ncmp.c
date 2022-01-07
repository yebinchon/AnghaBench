
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* id; } ;
typedef TYPE_1__ git_oid ;


 size_t GIT_OID_HEXSZ ;

int git_oid_ncmp(const git_oid *oid_a, const git_oid *oid_b, size_t len)
{
 const unsigned char *a = oid_a->id;
 const unsigned char *b = oid_b->id;

 if (len > GIT_OID_HEXSZ)
  len = GIT_OID_HEXSZ;

 while (len > 1) {
  if (*a != *b)
   return 1;
  a++;
  b++;
  len -= 2;
 };

 if (len)
  if ((*a ^ *b) & 0xf0)
   return 1;

 return 0;
}
