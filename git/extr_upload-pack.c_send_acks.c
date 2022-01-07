
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_writer {int dummy; } ;
struct oid_array {int nr; int * oid; } ;
struct object_array {int dummy; } ;


 int oid_to_hex (int *) ;
 scalar_t__ ok_to_give_up (struct object_array const*,struct object_array*) ;
 int packet_writer_write (struct packet_writer*,char*,...) ;

__attribute__((used)) static int send_acks(struct packet_writer *writer, struct oid_array *acks,
       const struct object_array *have_obj,
       struct object_array *want_obj)
{
 int i;

 packet_writer_write(writer, "acknowledgments\n");


 if (!acks->nr)
  packet_writer_write(writer, "NAK\n");

 for (i = 0; i < acks->nr; i++) {
  packet_writer_write(writer, "ACK %s\n",
        oid_to_hex(&acks->oid[i]));
 }

 if (ok_to_give_up(have_obj, want_obj)) {

  packet_writer_write(writer, "ready\n");
  return 1;
 }

 return 0;
}
