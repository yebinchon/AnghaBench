
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 size_t INDEX_HIGH ;
 size_t INDEX_LOW ;
 int MUL32 (int ,int ) ;
 int a0 ;
 int a1 ;
 int a2 ;
 int a3 ;
 int k0 ;
 int k1 ;
 int k2 ;
 int k3 ;

__attribute__((used)) static void poly_step_func(u64 *ahi, u64 *alo,
   const u64 *kh, const u64 *kl,
   const u64 *mh, const u64 *ml)
{
 u64 p, q, t;
 u32 t2;

 p = MUL32((*(((u32 *)ahi)+INDEX_HIGH)), (*(((u32 *)kh)+INDEX_HIGH)));
 p += p;
 p += *(u64 *)mh;
 p += MUL32((*(((u32 *)alo)+INDEX_LOW)), (*(((u32 *)kh)+INDEX_LOW)));
 p += MUL32((*(((u32 *)alo)+INDEX_HIGH)), (*(((u32 *)kl)+INDEX_HIGH)));
 p += MUL32((*(((u32 *)ahi)+INDEX_LOW)), (*(((u32 *)kl)+INDEX_LOW)));
 t = (u32)(p);
 p >>= 32;
 p += MUL32((*(((u32 *)alo)+INDEX_LOW)), (*(((u32 *)kh)+INDEX_HIGH)));
 p += MUL32((*(((u32 *)alo)+INDEX_HIGH)), (*(((u32 *)kh)+INDEX_LOW)));
 p += MUL32((*(((u32 *)ahi)+INDEX_LOW)), (*(((u32 *)kl)+INDEX_HIGH)));
 p += MUL32((*(((u32 *)ahi)+INDEX_HIGH)), (*(((u32 *)kl)+INDEX_LOW)));
 t |= ((u64)((u32)p & 0x7fffffff)) << 32;
 p >>= 31;
 p += (u64)(((u32 *)ml)[INDEX_LOW]);
 p += MUL32((*(((u32 *)alo)+INDEX_LOW)), (*(((u32 *)kl)+INDEX_LOW)));
 q = MUL32((*(((u32 *)alo)+INDEX_HIGH)), (*(((u32 *)kh)+INDEX_HIGH)));
 q += MUL32((*(((u32 *)ahi)+INDEX_LOW)), (*(((u32 *)kh)+INDEX_LOW)));
 q += MUL32((*(((u32 *)ahi)+INDEX_HIGH)), (*(((u32 *)kl)+INDEX_HIGH)));
 q += q;
 p += q;
 t2 = (u32)(p);
 p >>= 32;
 p += (u64)(((u32 *)ml)[INDEX_HIGH]);
 p += MUL32((*(((u32 *)alo)+INDEX_LOW)), (*(((u32 *)kl)+INDEX_HIGH)));
 p += MUL32((*(((u32 *)alo)+INDEX_HIGH)), (*(((u32 *)kl)+INDEX_LOW)));
 q = MUL32((*(((u32 *)ahi)+INDEX_LOW)), (*(((u32 *)kh)+INDEX_HIGH)));
 q += MUL32((*(((u32 *)ahi)+INDEX_HIGH)), (*(((u32 *)kh)+INDEX_LOW)));
 q += q;
 p += q;
 *(u64 *)(alo) = (p << 32) | t2;
 p >>= 32;
 *(u64 *)(ahi) = p + t;
}
