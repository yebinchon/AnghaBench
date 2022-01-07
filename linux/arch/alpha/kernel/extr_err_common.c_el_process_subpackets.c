
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct el_subpacket {scalar_t__ length; } ;


 struct el_subpacket* el_process_subpacket (struct el_subpacket*) ;
 int err_print_prefix ;
 int printk (char*,int ,int) ;

void
el_process_subpackets(struct el_subpacket *header, int packet_count)
{
 struct el_subpacket *subpacket;
 int i;

 subpacket = (struct el_subpacket *)
  ((unsigned long)header + header->length);

 for (i = 0; subpacket && i < packet_count; i++) {
  printk("%sPROCESSING SUBPACKET %d\n", err_print_prefix, i);
  subpacket = el_process_subpacket(subpacket);
 }
}
