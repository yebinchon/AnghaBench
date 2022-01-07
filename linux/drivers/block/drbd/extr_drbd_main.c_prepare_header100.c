
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_header100 {scalar_t__ pad; void* length; void* command; void* volume; void* magic; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int DRBD_MAGIC_100 ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static unsigned int prepare_header100(struct p_header100 *h, enum drbd_packet cmd,
          int size, int vnr)
{
 h->magic = cpu_to_be32(DRBD_MAGIC_100);
 h->volume = cpu_to_be16(vnr);
 h->command = cpu_to_be16(cmd);
 h->length = cpu_to_be32(size);
 h->pad = 0;
 return sizeof(struct p_header100);
}
