
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_register_config {int reset_values; } ;


 int wrperfmon (int,int) ;

__attribute__((used)) static void
ev67_reset_ctr(struct op_register_config *reg, unsigned long ctr)
{
 wrperfmon(6, reg->reset_values | (1 << ctr));
}
