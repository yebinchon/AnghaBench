
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* id; } ;
typedef TYPE_1__ git_oid ;


 unsigned int GIT_OID_RAWSZ ;

int git_oid_is_zero(const git_oid *oid_a)
{
 const unsigned char *a = oid_a->id;
 unsigned int i;
 for (i = 0; i < GIT_OID_RAWSZ; ++i, ++a)
  if (*a != 0)
   return 0;
 return 1;
}
