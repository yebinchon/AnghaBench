
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sha256_state {int dummy; } ;


 int BUILD_BUG_ON (int) ;

__attribute__((used)) static inline void ppc_sha256_clear_context(struct sha256_state *sctx)
{
 int count = sizeof(struct sha256_state) >> 2;
 u32 *ptr = (u32 *)sctx;


 BUILD_BUG_ON(sizeof(struct sha256_state) % 4);
 do { *ptr++ = 0; } while (--count);
}
