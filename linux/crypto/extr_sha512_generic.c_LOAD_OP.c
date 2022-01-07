
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int __u64 ;


 int get_unaligned_be64 (int *) ;

__attribute__((used)) static inline void LOAD_OP(int I, u64 *W, const u8 *input)
{
 W[I] = get_unaligned_be64((__u64 *)input + I);
}
