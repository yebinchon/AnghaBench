
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_writer {int dummy; } ;
struct object_array {int nr; TYPE_1__* objects; } ;
struct object {int oid; } ;
struct TYPE_2__ {struct object* item; } ;


 int ALLOW_REACHABLE_SHA1 ;
 int allow_unadvertised_object_request ;
 int die (char*,int ) ;
 int has_unreachable (struct object_array*) ;
 int is_our_ref (struct object*) ;
 int oid_to_hex (int *) ;
 int packet_writer_error (struct packet_writer*,char*,int ) ;
 int stateless_rpc ;

__attribute__((used)) static void check_non_tip(struct object_array *want_obj,
     struct packet_writer *writer)
{
 int i;






 if (!stateless_rpc && !(allow_unadvertised_object_request & ALLOW_REACHABLE_SHA1))
  goto error;
 if (!has_unreachable(want_obj))

  return;

error:

 for (i = 0; i < want_obj->nr; i++) {
  struct object *o = want_obj->objects[i].item;
  if (!is_our_ref(o)) {
   packet_writer_error(writer,
         "upload-pack: not our ref %s",
         oid_to_hex(&o->oid));
   die("git upload-pack: not our ref %s",
       oid_to_hex(&o->oid));
  }
 }
}
