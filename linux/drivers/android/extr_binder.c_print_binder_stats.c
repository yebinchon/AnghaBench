
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct binder_stats {int * obj_deleted; int * obj_created; int * br; int * bc; } ;


 int ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 int atomic_read (int *) ;
 int * binder_command_strings ;
 int * binder_objstat_strings ;
 int * binder_return_strings ;
 int seq_printf (struct seq_file*,char*,char const*,int ,int,...) ;

__attribute__((used)) static void print_binder_stats(struct seq_file *m, const char *prefix,
          struct binder_stats *stats)
{
 int i;

 BUILD_BUG_ON(ARRAY_SIZE(stats->bc) !=
       ARRAY_SIZE(binder_command_strings));
 for (i = 0; i < ARRAY_SIZE(stats->bc); i++) {
  int temp = atomic_read(&stats->bc[i]);

  if (temp)
   seq_printf(m, "%s%s: %d\n", prefix,
       binder_command_strings[i], temp);
 }

 BUILD_BUG_ON(ARRAY_SIZE(stats->br) !=
       ARRAY_SIZE(binder_return_strings));
 for (i = 0; i < ARRAY_SIZE(stats->br); i++) {
  int temp = atomic_read(&stats->br[i]);

  if (temp)
   seq_printf(m, "%s%s: %d\n", prefix,
       binder_return_strings[i], temp);
 }

 BUILD_BUG_ON(ARRAY_SIZE(stats->obj_created) !=
       ARRAY_SIZE(binder_objstat_strings));
 BUILD_BUG_ON(ARRAY_SIZE(stats->obj_created) !=
       ARRAY_SIZE(stats->obj_deleted));
 for (i = 0; i < ARRAY_SIZE(stats->obj_created); i++) {
  int created = atomic_read(&stats->obj_created[i]);
  int deleted = atomic_read(&stats->obj_deleted[i]);

  if (created || deleted)
   seq_printf(m, "%s%s: active %d total %d\n",
    prefix,
    binder_objstat_strings[i],
    created - deleted,
    created);
 }
}
