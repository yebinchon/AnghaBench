
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rename_conflict_info {int rename_type; struct rename* ren2; struct rename* ren1; } ;
struct rename {scalar_t__ branch; TYPE_1__* dst_entry; } ;
struct merge_options {scalar_t__ branch1; } ;
typedef enum rename_type { ____Placeholder_rename_type } rename_type ;
struct TYPE_2__ {struct rename_conflict_info* rename_conflict_info; scalar_t__ processed; } ;


 struct rename_conflict_info* xcalloc (int,int) ;

__attribute__((used)) static inline void setup_rename_conflict_info(enum rename_type rename_type,
           struct merge_options *opt,
           struct rename *ren1,
           struct rename *ren2)
{
 struct rename_conflict_info *ci;
 if (ren2 && ren1->branch != opt->branch1) {
  setup_rename_conflict_info(rename_type, opt, ren2, ren1);
  return;
 }

 ci = xcalloc(1, sizeof(struct rename_conflict_info));
 ci->rename_type = rename_type;
 ci->ren1 = ren1;
 ci->ren2 = ren2;

 ci->ren1->dst_entry->processed = 0;
 ci->ren1->dst_entry->rename_conflict_info = ci;
 if (ren2) {
  ci->ren2->dst_entry->rename_conflict_info = ci;
 }
}
