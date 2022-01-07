
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SPRN_IAMR ;
 int likely (int ) ;
 int mfspr (int ) ;
 int pkey_execute_disable_supported ;

__attribute__((used)) static inline u64 read_iamr(void)
{
 if (!likely(pkey_execute_disable_supported))
  return 0x0UL;

 return mfspr(SPRN_IAMR);
}
