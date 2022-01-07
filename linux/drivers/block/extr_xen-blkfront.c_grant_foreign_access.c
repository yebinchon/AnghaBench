
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grant {int page; int gref; } ;
struct blkfront_info {TYPE_1__* xbdev; } ;
struct TYPE_2__ {int otherend_id; } ;


 int gnttab_page_grant_foreign_access_ref_one (int ,int ,int ,int ) ;

__attribute__((used)) static inline void grant_foreign_access(const struct grant *gnt_list_entry,
     const struct blkfront_info *info)
{
 gnttab_page_grant_foreign_access_ref_one(gnt_list_entry->gref,
       info->xbdev->otherend_id,
       gnt_list_entry->page,
       0);
}
