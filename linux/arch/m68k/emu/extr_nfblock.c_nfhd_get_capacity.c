
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 scalar_t__ NFHD_GET_CAPACITY ;
 int nf_call (scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ nfhd_id ;
 int virt_to_phys (int *) ;

__attribute__((used)) static inline s32 nfhd_get_capacity(u32 major, u32 minor, u32 *blocks,
        u32 *blocksize)
{
 return nf_call(nfhd_id + NFHD_GET_CAPACITY, major, minor,
         virt_to_phys(blocks), virt_to_phys(blocksize));
}
