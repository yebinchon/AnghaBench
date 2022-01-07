
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int CLP_BLK_SIZE ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int get_order (int ) ;

__attribute__((used)) static void *clp_alloc_block(gfp_t gfp_mask)
{
 return (void *) __get_free_pages(gfp_mask, get_order(CLP_BLK_SIZE));
}
