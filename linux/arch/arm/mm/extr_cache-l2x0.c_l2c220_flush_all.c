
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L2X0_CLEAN_INV_WAY ;
 int l2c220_op_way (int ,int ) ;
 int l2x0_base ;

__attribute__((used)) static void l2c220_flush_all(void)
{
 l2c220_op_way(l2x0_base, L2X0_CLEAN_INV_WAY);
}
