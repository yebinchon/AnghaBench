
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int mtime; } ;
struct pack_midx_entry {int offset; int pack_mtime; int pack_int_id; int oid; } ;


 int _ (char*) ;
 int die (int ,int ) ;
 int nth_packed_object_offset (struct packed_git*,int ) ;
 int nth_packed_object_oid (int *,struct packed_git*,int ) ;

__attribute__((used)) static void fill_pack_entry(uint32_t pack_int_id,
       struct packed_git *p,
       uint32_t cur_object,
       struct pack_midx_entry *entry)
{
 if (!nth_packed_object_oid(&entry->oid, p, cur_object))
  die(_("failed to locate object %d in packfile"), cur_object);

 entry->pack_int_id = pack_int_id;
 entry->pack_mtime = p->mtime;

 entry->offset = nth_packed_object_offset(p, cur_object);
}
