
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {int dummy; } ;
struct upload_pack_data {struct oid_array haves; int writer; scalar_t__ done; } ;
struct object_array {int dummy; } ;


 struct oid_array OID_ARRAY_INIT ;
 int oid_array_clear (struct oid_array*) ;
 int packet_writer_delim (int *) ;
 int packet_writer_flush (int *) ;
 int process_haves (struct oid_array*,struct oid_array*,struct object_array*) ;
 scalar_t__ send_acks (int *,struct oid_array*,struct object_array*,struct object_array*) ;

__attribute__((used)) static int process_haves_and_send_acks(struct upload_pack_data *data,
           struct object_array *have_obj,
           struct object_array *want_obj)
{
 struct oid_array common = OID_ARRAY_INIT;
 int ret = 0;

 process_haves(&data->haves, &common, have_obj);
 if (data->done) {
  ret = 1;
 } else if (send_acks(&data->writer, &common, have_obj, want_obj)) {
  packet_writer_delim(&data->writer);
  ret = 1;
 } else {

  packet_writer_flush(&data->writer);
  ret = 0;
 }

 oid_array_clear(&data->haves);
 oid_array_clear(&common);
 return ret;
}
