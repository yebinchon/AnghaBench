
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AL_EXTENT_SHIFT ;
 unsigned int BM_BLOCK_SHIFT ;
 unsigned int PAGE_SHIFT ;

__attribute__((used)) static unsigned int al_extent_to_bm_page(unsigned int al_enr)
{
 return al_enr >>

  ((PAGE_SHIFT + 3) -

   (AL_EXTENT_SHIFT - BM_BLOCK_SHIFT));
}
