
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct packet_reader {char const* line; scalar_t__ pktlen; int src_len; int src_buffer; } ;
struct discovery {int proto_git; int len; int buf; } ;


 int PACKET_READ_CHOMP_NEWLINE ;
 int PACKET_READ_DIE_ON_ERR_PACKET ;
 scalar_t__ PACKET_READ_NORMAL ;
 int _ (char*) ;
 int die (int ,...) ;
 int packet_reader_init (struct packet_reader*,int,int ,int ,int) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 scalar_t__ skip_prefix (char const*,char const*,char const**) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void check_smart_http(struct discovery *d, const char *service,
        struct strbuf *type)
{
 const char *p;
 struct packet_reader reader;






 if (!skip_prefix(type->buf, "application/x-", &p) ||
     !skip_prefix(p, service, &p) ||
     strcmp(p, "-advertisement"))
  return;

 packet_reader_init(&reader, -1, d->buf, d->len,
      PACKET_READ_CHOMP_NEWLINE |
      PACKET_READ_DIE_ON_ERR_PACKET);
 if (packet_reader_read(&reader) != PACKET_READ_NORMAL)
  die(_("invalid server response; expected service, got flush packet"));

 if (skip_prefix(reader.line, "# service=", &p) && !strcmp(p, service)) {





  for (;;) {
   packet_reader_read(&reader);
   if (reader.pktlen <= 0) {
    break;
   }
  }





  d->buf = reader.src_buffer;
  d->len = reader.src_len;
  d->proto_git = 1;

 } else if (!strcmp(reader.line, "version 2")) {




  d->proto_git = 1;

 } else {
  die(_("invalid server response; got '%s'"), reader.line);
 }
}
