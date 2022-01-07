
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int OP_INV ;
 int __dc_line_op_k (int ,unsigned long,int ) ;
 int slc_op (int ,unsigned long,int ) ;

__attribute__((used)) static void __dma_cache_inv_slc(phys_addr_t start, unsigned long sz)
{
 __dc_line_op_k(start, sz, OP_INV);
 slc_op(start, sz, OP_INV);
}
