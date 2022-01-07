
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_writer {int dest_fd; } ;


 int packet_flush (int ) ;

void packet_writer_flush(struct packet_writer *writer)
{
 packet_flush(writer->dest_fd);
}
