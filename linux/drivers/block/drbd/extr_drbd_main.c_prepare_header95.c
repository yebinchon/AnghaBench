
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_header95 {int length; void* command; void* magic; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int DRBD_MAGIC_BIG ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static unsigned int prepare_header95(struct p_header95 *h, enum drbd_packet cmd, int size)
{
 h->magic = cpu_to_be16(DRBD_MAGIC_BIG);
 h->command = cpu_to_be16(cmd);
 h->length = cpu_to_be32(size);
 return sizeof(struct p_header95);
}
