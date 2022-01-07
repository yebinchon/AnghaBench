
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_writer {int dest_fd; } ;


 int packet_delim (int ) ;

void packet_writer_delim(struct packet_writer *writer)
{
 packet_delim(writer->dest_fd);
}
