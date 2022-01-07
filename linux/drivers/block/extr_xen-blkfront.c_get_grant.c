
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grant {int gref; } ;
struct blkfront_ring_info {struct blkfront_info* dev_info; } ;
struct blkfront_info {TYPE_1__* xbdev; scalar_t__ feature_persistent; } ;
typedef int grant_ref_t ;
struct TYPE_2__ {int otherend_id; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int GRANT_INVALID_REF ;
 struct grant* get_free_grant (struct blkfront_ring_info*) ;
 int gnttab_claim_grant_reference (int *) ;
 int gnttab_grant_foreign_access_ref (int ,int ,unsigned long,int ) ;
 int grant_foreign_access (struct grant*,struct blkfront_info*) ;

__attribute__((used)) static struct grant *get_grant(grant_ref_t *gref_head,
          unsigned long gfn,
          struct blkfront_ring_info *rinfo)
{
 struct grant *gnt_list_entry = get_free_grant(rinfo);
 struct blkfront_info *info = rinfo->dev_info;

 if (gnt_list_entry->gref != GRANT_INVALID_REF)
  return gnt_list_entry;


 gnt_list_entry->gref = gnttab_claim_grant_reference(gref_head);
 BUG_ON(gnt_list_entry->gref == -ENOSPC);
 if (info->feature_persistent)
  grant_foreign_access(gnt_list_entry, info);
 else {

  gnttab_grant_foreign_access_ref(gnt_list_entry->gref,
      info->xbdev->otherend_id,
      gfn, 0);
 }

 return gnt_list_entry;
}
