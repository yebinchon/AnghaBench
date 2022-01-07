
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_DBSR ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;

__attribute__((used)) static inline void kvmppc_clear_dbsr(void)
{
 mtspr(SPRN_DBSR, mfspr(SPRN_DBSR));
}
