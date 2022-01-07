
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr; struct object_array_entry* objects; } ;
struct rev_info {int diffopt; TYPE_1__ pending; } ;
struct object_array_entry {int name; TYPE_2__* item; } ;
struct TYPE_4__ {int oid; } ;


 int BUG (char*) ;
 scalar_t__ diff_cache (struct rev_info*,int *,int ,int) ;
 int diff_flush (int *) ;
 int diff_set_mnemonic_prefix (int *,char*,char*) ;
 int diffcore_fix_diff_index () ;
 int diffcore_std (int *) ;
 int exit (int) ;
 int trace_performance_enter () ;
 int trace_performance_leave (char*) ;

int run_diff_index(struct rev_info *revs, int cached)
{
 struct object_array_entry *ent;

 if (revs->pending.nr != 1)
  BUG("run_diff_index must be passed exactly one tree");

 trace_performance_enter();
 ent = revs->pending.objects;
 if (diff_cache(revs, &ent->item->oid, ent->name, cached))
  exit(128);

 diff_set_mnemonic_prefix(&revs->diffopt, "c/", cached ? "i/" : "w/");
 diffcore_fix_diff_index();
 diffcore_std(&revs->diffopt);
 diff_flush(&revs->diffopt);
 trace_performance_leave("diff-index");
 return 0;
}
