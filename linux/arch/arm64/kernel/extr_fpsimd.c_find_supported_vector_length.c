
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* SVE_VL_MIN ;
 int SVE_VQ_MAX ;
 scalar_t__ WARN_ON (int) ;
 int __bit_to_vq (int) ;
 int __vq_to_bit (int ) ;
 int find_next_bit (int ,int ,int ) ;
 int sve_max_vl ;
 unsigned int sve_vl_from_vq (int ) ;
 int sve_vl_valid (int) ;
 int sve_vq_from_vl (unsigned int) ;
 int sve_vq_map ;

__attribute__((used)) static unsigned int find_supported_vector_length(unsigned int vl)
{
 int bit;
 int max_vl = sve_max_vl;

 if (WARN_ON(!sve_vl_valid(vl)))
  vl = SVE_VL_MIN;

 if (WARN_ON(!sve_vl_valid(max_vl)))
  max_vl = SVE_VL_MIN;

 if (vl > max_vl)
  vl = max_vl;

 bit = find_next_bit(sve_vq_map, SVE_VQ_MAX,
       __vq_to_bit(sve_vq_from_vl(vl)));
 return sve_vl_from_vq(__bit_to_vq(bit));
}
