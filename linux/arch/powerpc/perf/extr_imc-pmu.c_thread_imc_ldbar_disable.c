
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_LDBAR ;
 int mtspr (int ,int ) ;

__attribute__((used)) static void thread_imc_ldbar_disable(void *dummy)
{




 mtspr(SPRN_LDBAR, 0);
}
