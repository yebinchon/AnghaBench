
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_desc {int misc; } ;


 int DESC_PKTLEN_MASK ;
 int DESC_PKTLEN_SHIFT ;

__attribute__((used)) static inline u32 desc_get_pktlen(struct dma_desc *desc)
{
 return (desc->misc >> DESC_PKTLEN_SHIFT) & DESC_PKTLEN_MASK;
}
