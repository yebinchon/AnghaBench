
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_reader {int line_peeked; int status; } ;
typedef enum packet_read_status { ____Placeholder_packet_read_status } packet_read_status ;


 int packet_reader_read (struct packet_reader*) ;

enum packet_read_status packet_reader_peek(struct packet_reader *reader)
{

 if (reader->line_peeked)
  return reader->status;


 packet_reader_read(reader);
 reader->line_peeked = 1;
 return reader->status;
}
