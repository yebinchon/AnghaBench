
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packet_writer {int dummy; } ;
struct object_array {int nr; TYPE_1__* objects; } ;
struct object {int flags; int oid; scalar_t__ parsed; } ;
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_4__ {struct object object; } ;
struct TYPE_3__ {struct object* item; } ;


 int CLIENT_SHALLOW ;
 int NOT_SHALLOW ;
 int add_object_array (struct object*,int *,struct object_array*) ;
 struct object_array extra_edge_obj ;
 int oid_to_hex (int *) ;
 int packet_writer_write (struct packet_writer*,char*,int ) ;
 int parse_commit_or_die (struct commit*) ;
 int register_shallow (int ,int *) ;
 int the_repository ;
 int unregister_shallow (int *) ;

__attribute__((used)) static void send_unshallow(struct packet_writer *writer,
      const struct object_array *shallows,
      struct object_array *want_obj)
{
 int i;

 for (i = 0; i < shallows->nr; i++) {
  struct object *object = shallows->objects[i].item;
  if (object->flags & NOT_SHALLOW) {
   struct commit_list *parents;
   packet_writer_write(writer, "unshallow %s",
         oid_to_hex(&object->oid));
   object->flags &= ~CLIENT_SHALLOW;







   unregister_shallow(&object->oid);
   object->parsed = 0;
   parse_commit_or_die((struct commit *)object);
   parents = ((struct commit *)object)->parents;
   while (parents) {
    add_object_array(&parents->item->object,
       ((void*)0), want_obj);
    parents = parents->next;
   }
   add_object_array(object, ((void*)0), &extra_edge_obj);
  }

  register_shallow(the_repository, &object->oid);
 }
}
