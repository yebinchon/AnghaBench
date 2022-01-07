
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u64 ;



__attribute__((used)) static inline u8 extract_pstate(u64 pmsr_val, unsigned int shift)
{
 return ((pmsr_val >> shift) & 0xFF);
}
