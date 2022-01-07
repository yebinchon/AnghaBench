
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_writer {int dummy; } ;
struct object {int flags; int oid; } ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct TYPE_2__ {struct object object; } ;


 int CLIENT_SHALLOW ;
 int NOT_SHALLOW ;
 int oid_to_hex (int *) ;
 int packet_writer_write (struct packet_writer*,char*,int ) ;
 int register_shallow (int ,int *) ;
 int shallow_nr ;
 int the_repository ;

__attribute__((used)) static void send_shallow(struct packet_writer *writer,
    struct commit_list *result)
{
 while (result) {
  struct object *object = &result->item->object;
  if (!(object->flags & (CLIENT_SHALLOW|NOT_SHALLOW))) {
   packet_writer_write(writer, "shallow %s",
         oid_to_hex(&object->oid));
   register_shallow(the_repository, &object->oid);
   shallow_nr++;
  }
  result = result->next;
 }
}
