
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ s0 (scalar_t__) ;
 scalar_t__ s1 (scalar_t__) ;

__attribute__((used)) static inline void BLEND_OP(int I, u64 *W)
{
 W[I & 15] += s1(W[(I-2) & 15]) + W[(I-7) & 15] + s0(W[(I-15) & 15]);
}
