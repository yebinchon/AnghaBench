
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_header80 {void* length; void* command; int magic; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int DRBD_MAGIC ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static unsigned int prepare_header80(struct p_header80 *h, enum drbd_packet cmd, int size)
{
 h->magic = cpu_to_be32(DRBD_MAGIC);
 h->command = cpu_to_be16(cmd);
 h->length = cpu_to_be16(size);
 return sizeof(struct p_header80);
}
