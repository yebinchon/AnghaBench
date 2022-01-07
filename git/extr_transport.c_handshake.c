
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int server_options; struct git_transport_data* data; } ;
struct ref {int dummy; } ;
struct packet_reader {scalar_t__ line_peeked; } ;
struct git_transport_data {int version; int got_remote_heads; int shallow; int extra_have; int * fd; } ;
struct argv_array {int dummy; } ;


 int BUG (char*) ;
 int PACKET_READ_CHOMP_NEWLINE ;
 int PACKET_READ_DIE_ON_ERR_PACKET ;
 int PACKET_READ_GENTLE_ON_EOF ;
 int REF_NORMAL ;
 int connect_setup (struct transport*,int) ;
 int die_if_server_options (struct transport*) ;
 int discover_version (struct packet_reader*) ;
 int get_remote_heads (struct packet_reader*,struct ref**,int ,int *,int *) ;
 int get_remote_refs (int ,struct packet_reader*,struct ref**,int,struct argv_array const*,int ) ;
 int packet_reader_init (struct packet_reader*,int ,int *,int ,int) ;





__attribute__((used)) static struct ref *handshake(struct transport *transport, int for_push,
        const struct argv_array *ref_prefixes,
        int must_list_refs)
{
 struct git_transport_data *data = transport->data;
 struct ref *refs = ((void*)0);
 struct packet_reader reader;

 connect_setup(transport, for_push);

 packet_reader_init(&reader, data->fd[0], ((void*)0), 0,
      PACKET_READ_CHOMP_NEWLINE |
      PACKET_READ_GENTLE_ON_EOF |
      PACKET_READ_DIE_ON_ERR_PACKET);

 data->version = discover_version(&reader);
 switch (data->version) {
 case 128:
  if (must_list_refs)
   get_remote_refs(data->fd[1], &reader, &refs, for_push,
     ref_prefixes,
     transport->server_options);
  break;
 case 129:
 case 130:
  die_if_server_options(transport);
  get_remote_heads(&reader, &refs,
     for_push ? REF_NORMAL : 0,
     &data->extra_have,
     &data->shallow);
  break;
 case 131:
  BUG("unknown protocol version");
 }
 data->got_remote_heads = 1;

 if (reader.line_peeked)
  BUG("buffer must be empty at the end of handshake()");

 return refs;
}
