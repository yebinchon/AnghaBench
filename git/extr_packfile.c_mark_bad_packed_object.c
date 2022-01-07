
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packed_git {unsigned int num_bad_objects; scalar_t__ bad_object_sha1; } ;
struct TYPE_2__ {unsigned int rawsz; } ;


 int GIT_MAX_RAWSZ ;
 int hashcpy (scalar_t__,unsigned char const*) ;
 scalar_t__ hasheq (unsigned char const*,scalar_t__) ;
 int st_add (unsigned int,int) ;
 int st_mult (int ,int ) ;
 TYPE_1__* the_hash_algo ;
 scalar_t__ xrealloc (scalar_t__,int ) ;

void mark_bad_packed_object(struct packed_git *p, const unsigned char *sha1)
{
 unsigned i;
 const unsigned hashsz = the_hash_algo->rawsz;
 for (i = 0; i < p->num_bad_objects; i++)
  if (hasheq(sha1, p->bad_object_sha1 + hashsz * i))
   return;
 p->bad_object_sha1 = xrealloc(p->bad_object_sha1,
          st_mult(GIT_MAX_RAWSZ,
           st_add(p->num_bad_objects, 1)));
 hashcpy(p->bad_object_sha1 + hashsz * p->num_bad_objects, sha1);
 p->num_bad_objects++;
}
