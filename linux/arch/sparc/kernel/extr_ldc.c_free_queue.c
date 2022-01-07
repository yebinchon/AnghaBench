
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_packet {int dummy; } ;


 unsigned long LDC_PACKET_SIZE ;
 int free_pages (unsigned long,unsigned long) ;
 unsigned long get_order (unsigned long) ;

__attribute__((used)) static void free_queue(unsigned long num_entries, struct ldc_packet *q)
{
 unsigned long size, order;

 if (!q)
  return;

 size = num_entries * LDC_PACKET_SIZE;
 order = get_order(size);

 free_pages((unsigned long)q, order);
}
