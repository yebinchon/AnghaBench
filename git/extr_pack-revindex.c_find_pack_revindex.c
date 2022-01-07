
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revindex_entry {int dummy; } ;
struct packed_git {struct revindex_entry* revindex; } ;
typedef int off_t ;


 int find_revindex_position (struct packed_git*,int ) ;
 scalar_t__ load_pack_revindex (struct packed_git*) ;

struct revindex_entry *find_pack_revindex(struct packed_git *p, off_t ofs)
{
 int pos;

 if (load_pack_revindex(p))
  return ((void*)0);

 pos = find_revindex_position(p, ofs);

 if (pos < 0)
  return ((void*)0);

 return p->revindex + pos;
}
