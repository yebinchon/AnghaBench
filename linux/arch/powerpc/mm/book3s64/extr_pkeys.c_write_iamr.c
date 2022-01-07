
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SPRN_IAMR ;
 int likely (int ) ;
 int mtspr (int ,int ) ;
 int pkey_execute_disable_supported ;

__attribute__((used)) static inline void write_iamr(u64 value)
{
 if (!likely(pkey_execute_disable_supported))
  return;

 mtspr(SPRN_IAMR, value);
}
