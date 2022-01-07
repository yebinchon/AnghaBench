
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shallow_info {int nr_theirs; int* theirs; TYPE_1__* shallow; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {struct object_id* oid; } ;


 scalar_t__ has_object_file (struct object_id*) ;
 int trace_printf_key (int *,char*) ;
 int trace_shallow ;

void remove_nonexistent_theirs_shallow(struct shallow_info *info)
{
 struct object_id *oid = info->shallow->oid;
 int i, dst;
 trace_printf_key(&trace_shallow, "shallow: remove_nonexistent_theirs_shallow\n");
 for (i = dst = 0; i < info->nr_theirs; i++) {
  if (i != dst)
   info->theirs[dst] = info->theirs[i];
  if (has_object_file(oid + info->theirs[i]))
   dst++;
 }
 info->nr_theirs = dst;
}
