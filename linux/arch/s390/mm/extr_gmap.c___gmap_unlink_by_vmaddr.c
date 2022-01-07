
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int guest_table_lock; int host_to_guest; } ;


 int BUG_ON (int ) ;
 unsigned long PMD_SHIFT ;
 unsigned long _SEGMENT_ENTRY_EMPTY ;
 int gmap_is_shadow (struct gmap*) ;
 unsigned long* radix_tree_delete (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __gmap_unlink_by_vmaddr(struct gmap *gmap, unsigned long vmaddr)
{
 unsigned long *entry;
 int flush = 0;

 BUG_ON(gmap_is_shadow(gmap));
 spin_lock(&gmap->guest_table_lock);
 entry = radix_tree_delete(&gmap->host_to_guest, vmaddr >> PMD_SHIFT);
 if (entry) {
  flush = (*entry != _SEGMENT_ENTRY_EMPTY);
  *entry = _SEGMENT_ENTRY_EMPTY;
 }
 spin_unlock(&gmap->guest_table_lock);
 return flush;
}
