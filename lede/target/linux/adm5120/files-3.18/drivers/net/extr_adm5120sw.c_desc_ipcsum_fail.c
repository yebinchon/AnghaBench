
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int misc; } ;


 int DESC_IPCSUM_FAIL ;

__attribute__((used)) static inline int desc_ipcsum_fail(struct dma_desc *desc)
{
 return ((desc->misc & DESC_IPCSUM_FAIL) != 0);
}
