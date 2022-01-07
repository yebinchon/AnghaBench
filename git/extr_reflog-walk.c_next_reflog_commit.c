
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reflog_info {int noid; } ;
struct object {scalar_t__ type; } ;
struct commit_reflog {size_t recno; TYPE_1__* reflogs; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {struct reflog_info* items; } ;


 scalar_t__ OBJ_COMMIT ;
 struct object* parse_object (int ,int *) ;
 int the_repository ;

__attribute__((used)) static struct commit *next_reflog_commit(struct commit_reflog *log)
{
 for (; log->recno >= 0; log->recno--) {
  struct reflog_info *entry = &log->reflogs->items[log->recno];
  struct object *obj = parse_object(the_repository,
        &entry->noid);

  if (obj && obj->type == OBJ_COMMIT)
   return (struct commit *)obj;
 }
 return ((void*)0);
}
