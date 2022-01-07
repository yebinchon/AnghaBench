
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walker {scalar_t__ (* fetch ) (struct walker*,int ) ;} ;
struct object_list {struct object_list* next; struct object* item; } ;
struct TYPE_2__ {int hash; } ;
struct object {int flags; TYPE_1__ oid; int type; } ;


 int TO_SCAN ;
 int free (struct object_list*) ;
 int parse_object (int ,TYPE_1__*) ;
 scalar_t__ process_object (struct walker*,struct object*) ;
 struct object_list* process_queue ;
 struct object_list** process_queue_end ;
 int report_missing (struct object*) ;
 scalar_t__ stub1 (struct walker*,int ) ;
 int the_repository ;

__attribute__((used)) static int loop(struct walker *walker)
{
 struct object_list *elem;

 while (process_queue) {
  struct object *obj = process_queue->item;
  elem = process_queue;
  process_queue = elem->next;
  free(elem);
  if (!process_queue)
   process_queue_end = &process_queue;




  if (! (obj->flags & TO_SCAN)) {
   if (walker->fetch(walker, obj->oid.hash)) {
    report_missing(obj);
    return -1;
   }
  }
  if (!obj->type)
   parse_object(the_repository, &obj->oid);
  if (process_object(walker, obj))
   return -1;
 }
 return 0;
}
