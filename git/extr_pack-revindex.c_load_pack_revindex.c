
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int revindex; } ;


 int create_pack_revindex (struct packed_git*) ;
 scalar_t__ open_pack_index (struct packed_git*) ;

int load_pack_revindex(struct packed_git *p)
{
 if (!p->revindex) {
  if (open_pack_index(p))
   return -1;
  create_pack_revindex(p);
 }
 return 0;
}
