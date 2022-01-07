
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wt ;
typedef int w ;
typedef int u8 ;
typedef int u32 ;
struct sm3_state {int state; } ;


 int memzero_explicit (unsigned int*,int) ;
 int sm3_compress (unsigned int*,unsigned int*,int ) ;
 int sm3_expand (int *,unsigned int*,unsigned int*) ;

__attribute__((used)) static void sm3_transform(struct sm3_state *sst, u8 const *src)
{
 unsigned int w[68];
 unsigned int wt[64];

 sm3_expand((u32 *)src, w, wt);
 sm3_compress(w, wt, sst->state);

 memzero_explicit(w, sizeof(w));
 memzero_explicit(wt, sizeof(wt));
}
