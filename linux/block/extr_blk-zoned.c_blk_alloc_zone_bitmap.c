
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_TO_LONGS (unsigned int) ;
 int GFP_NOIO ;
 unsigned long* kcalloc_node (int ,int,int ,int) ;

__attribute__((used)) static inline unsigned long *blk_alloc_zone_bitmap(int node,
         unsigned int nr_zones)
{
 return kcalloc_node(BITS_TO_LONGS(nr_zones), sizeof(unsigned long),
       GFP_NOIO, node);
}
