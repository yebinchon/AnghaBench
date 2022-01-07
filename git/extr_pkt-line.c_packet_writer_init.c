
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_writer {int dest_fd; scalar_t__ use_sideband; } ;



void packet_writer_init(struct packet_writer *writer, int dest_fd)
{
 writer->dest_fd = dest_fd;
 writer->use_sideband = 0;
}
