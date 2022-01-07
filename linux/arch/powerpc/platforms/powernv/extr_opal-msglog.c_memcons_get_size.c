
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct memcons {int obuf_size; int ibuf_size; } ;


 scalar_t__ be32_to_cpu (int ) ;

u32 memcons_get_size(struct memcons *mc)
{
 return be32_to_cpu(mc->ibuf_size) + be32_to_cpu(mc->obuf_size);
}
