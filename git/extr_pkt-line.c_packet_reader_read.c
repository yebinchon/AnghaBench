
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct packet_reader {int status; int * line; int * buffer; scalar_t__ use_sideband; int pktlen; int me; int options; int buffer_size; int src_len; int src_buffer; int fd; scalar_t__ line_peeked; } ;
typedef enum sideband_type { ____Placeholder_sideband_type } sideband_type ;
typedef enum packet_read_status { ____Placeholder_packet_read_status } packet_read_status ;


 scalar_t__ PACKET_READ_NORMAL ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ demultiplex_sideband (int ,int *,int ,int,struct strbuf*,int*) ;
 int packet_read_with_status (int ,int *,int *,int *,int ,int *,int ) ;

enum packet_read_status packet_reader_read(struct packet_reader *reader)
{
 struct strbuf scratch = STRBUF_INIT;

 if (reader->line_peeked) {
  reader->line_peeked = 0;
  return reader->status;
 }





 while (1) {
  enum sideband_type sideband_type;
  reader->status = packet_read_with_status(reader->fd,
        &reader->src_buffer,
        &reader->src_len,
        reader->buffer,
        reader->buffer_size,
        &reader->pktlen,
        reader->options);
  if (!reader->use_sideband)
   break;
  if (demultiplex_sideband(reader->me, reader->buffer,
      reader->pktlen, 1, &scratch,
      &sideband_type))
   break;
 }

 if (reader->status == PACKET_READ_NORMAL)

  reader->line = reader->use_sideband ?
   reader->buffer + 1 : reader->buffer;
 else
  reader->line = ((void*)0);

 return reader->status;
}
