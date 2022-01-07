
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
typedef struct packed_git {unsigned int num_bad_objects; scalar_t__ bad_object_sha1; struct packed_git const* next; } const packed_git ;
struct TYPE_4__ {unsigned int rawsz; } ;
struct TYPE_3__ {struct packed_git const* packed_git; } ;


 scalar_t__ hasheq (unsigned char const*,scalar_t__) ;
 TYPE_2__* the_hash_algo ;

const struct packed_git *has_packed_and_bad(struct repository *r,
         const unsigned char *sha1)
{
 struct packed_git *p;
 unsigned i;

 for (p = r->objects->packed_git; p; p = p->next)
  for (i = 0; i < p->num_bad_objects; i++)
   if (hasheq(sha1,
       p->bad_object_sha1 + the_hash_algo->rawsz * i))
    return p;
 return ((void*)0);
}
