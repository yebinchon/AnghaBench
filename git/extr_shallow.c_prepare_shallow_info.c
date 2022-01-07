
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shallow_info {int* ours; int* theirs; int nr_theirs; int nr_ours; struct oid_array* shallow; } ;
struct oid_array {int nr; int * oid; } ;
struct commit_graft {scalar_t__ nr_parent; } ;


 int ALLOC_ARRAY (int*,int) ;
 scalar_t__ has_object_file (int *) ;
 struct commit_graft* lookup_commit_graft (int ,int *) ;
 int memset (struct shallow_info*,int ,int) ;
 int the_repository ;
 int trace_printf_key (int *,char*) ;
 int trace_shallow ;

void prepare_shallow_info(struct shallow_info *info, struct oid_array *sa)
{
 int i;
 trace_printf_key(&trace_shallow, "shallow: prepare_shallow_info\n");
 memset(info, 0, sizeof(*info));
 info->shallow = sa;
 if (!sa)
  return;
 ALLOC_ARRAY(info->ours, sa->nr);
 ALLOC_ARRAY(info->theirs, sa->nr);
 for (i = 0; i < sa->nr; i++) {
  if (has_object_file(sa->oid + i)) {
   struct commit_graft *graft;
   graft = lookup_commit_graft(the_repository,
          &sa->oid[i]);
   if (graft && graft->nr_parent < 0)
    continue;
   info->ours[info->nr_ours++] = i;
  } else
   info->theirs[info->nr_theirs++] = i;
 }
}
