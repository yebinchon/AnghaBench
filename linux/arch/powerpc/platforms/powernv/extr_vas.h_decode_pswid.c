
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void decode_pswid(u32 pswid, int *vasid, int *winid)
{
 if (vasid)
  *vasid = pswid >> (31 - 7) & 0xFF;

 if (winid)
  *winid = pswid & 0xFFFF;
}
