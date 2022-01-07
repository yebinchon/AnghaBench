
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;
struct packet_reader {int dummy; } ;
struct discovery {int shallow; int version; int len; int buf; } ;


 int BUG (char*) ;
 int PACKET_READ_CHOMP_NEWLINE ;
 int PACKET_READ_DIE_ON_ERR_PACKET ;
 int PACKET_READ_GENTLE_ON_EOF ;
 int REF_NORMAL ;
 int discover_version (struct packet_reader*) ;
 int get_remote_heads (struct packet_reader*,struct ref**,int ,int *,int *) ;
 int packet_reader_init (struct packet_reader*,int,int ,int ,int) ;





__attribute__((used)) static struct ref *parse_git_refs(struct discovery *heads, int for_push)
{
 struct ref *list = ((void*)0);
 struct packet_reader reader;

 packet_reader_init(&reader, -1, heads->buf, heads->len,
      PACKET_READ_CHOMP_NEWLINE |
      PACKET_READ_GENTLE_ON_EOF |
      PACKET_READ_DIE_ON_ERR_PACKET);

 heads->version = discover_version(&reader);
 switch (heads->version) {
 case 128:






  break;
 case 129:
 case 130:
  get_remote_heads(&reader, &list, for_push ? REF_NORMAL : 0,
     ((void*)0), &heads->shallow);
  break;
 case 131:
  BUG("unknown protocol version");
 }

 return list;
}
