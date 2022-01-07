
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct walker {int (* prefetch ) (struct walker*,int ) ;} ;
struct TYPE_5__ {int hash; } ;
struct object {int flags; TYPE_3__ oid; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int COMPLETE ;
 int SEEN ;
 int TO_SCAN ;
 scalar_t__ has_object_file (TYPE_3__*) ;
 int object_list_insert (struct object*,TYPE_1__**) ;
 TYPE_1__** process_queue_end ;
 int stub1 (struct walker*,int ) ;

__attribute__((used)) static int process(struct walker *walker, struct object *obj)
{
 if (obj->flags & SEEN)
  return 0;
 obj->flags |= SEEN;

 if (has_object_file(&obj->oid)) {

  obj->flags |= TO_SCAN;
 }
 else {
  if (obj->flags & COMPLETE)
   return 0;
  walker->prefetch(walker, obj->oid.hash);
 }

 object_list_insert(obj, process_queue_end);
 process_queue_end = &(*process_queue_end)->next;
 return 0;
}
