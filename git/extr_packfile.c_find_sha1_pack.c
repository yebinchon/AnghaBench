
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {struct packed_git* next; } ;


 scalar_t__ find_pack_entry_one (unsigned char const*,struct packed_git*) ;

struct packed_git *find_sha1_pack(const unsigned char *sha1,
      struct packed_git *packs)
{
 struct packed_git *p;

 for (p = packs; p; p = p->next) {
  if (find_pack_entry_one(sha1, p))
   return p;
 }
 return ((void*)0);

}
