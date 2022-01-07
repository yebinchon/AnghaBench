
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upload_pack_options {scalar_t__ advertise_refs; int daemon_mode; int timeout; int stateless_rpc; } ;
struct string_list {int dummy; } ;
struct packet_reader {int dummy; } ;
struct object_array {scalar_t__ nr; } ;


 struct object_array OBJECT_ARRAY_INIT ;
 int PACKET_READ_CHOMP_NEWLINE ;
 int PACKET_READ_DIE_ON_ERR_PACKET ;
 struct string_list STRING_LIST_INIT_DUP ;
 int advertise_shallow_grafts (int) ;
 int check_ref ;
 int create_pack_file (struct object_array*,struct object_array*) ;
 int daemon_mode ;
 int find_symref ;
 int for_each_namespaced_ref (int ,struct string_list*) ;
 int get_common_commits (struct packet_reader*,struct object_array*,struct object_array*) ;
 int git_config (int ,int *) ;
 int head_ref_namespaced (int ,struct string_list*) ;
 int packet_flush (int) ;
 int packet_reader_init (struct packet_reader*,int ,int *,int ,int) ;
 int receive_needs (struct packet_reader*,struct object_array*) ;
 int reset_timeout () ;
 int send_ref ;
 int stateless_rpc ;
 int string_list_clear (struct string_list*,int) ;
 int timeout ;
 int upload_pack_config ;

void upload_pack(struct upload_pack_options *options)
{
 struct string_list symref = STRING_LIST_INIT_DUP;
 struct object_array want_obj = OBJECT_ARRAY_INIT;
 struct packet_reader reader;

 stateless_rpc = options->stateless_rpc;
 timeout = options->timeout;
 daemon_mode = options->daemon_mode;

 git_config(upload_pack_config, ((void*)0));

 head_ref_namespaced(find_symref, &symref);

 if (options->advertise_refs || !stateless_rpc) {
  reset_timeout();
  head_ref_namespaced(send_ref, &symref);
  for_each_namespaced_ref(send_ref, &symref);
  advertise_shallow_grafts(1);
  packet_flush(1);
 } else {
  head_ref_namespaced(check_ref, ((void*)0));
  for_each_namespaced_ref(check_ref, ((void*)0));
 }
 string_list_clear(&symref, 1);
 if (options->advertise_refs)
  return;

 packet_reader_init(&reader, 0, ((void*)0), 0,
      PACKET_READ_CHOMP_NEWLINE |
      PACKET_READ_DIE_ON_ERR_PACKET);

 receive_needs(&reader, &want_obj);
 if (want_obj.nr) {
  struct object_array have_obj = OBJECT_ARRAY_INIT;
  get_common_commits(&reader, &have_obj, &want_obj);
  create_pack_file(&have_obj, &want_obj);
 }
}
