
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vfp_double {int significand; scalar_t__ exponent; scalar_t__ sign; } ;
typedef int s64 ;


 int VFP_DOUBLE_LOW_BITS ;
 int VFP_DOUBLE_MANTISSA_BITS ;

__attribute__((used)) static inline s64 vfp_double_pack(struct vfp_double *s)
{
 u64 val;
 val = ((u64)s->sign << 48) +
       ((u64)s->exponent << VFP_DOUBLE_MANTISSA_BITS) +
       (s->significand >> VFP_DOUBLE_LOW_BITS);
 return (s64)val;
}
