
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_KVM_AMD_SEV ;
 scalar_t__ IS_ENABLED (int ) ;
 int max_sev_asid ;

__attribute__((used)) static inline bool svm_sev_enabled(void)
{
 return IS_ENABLED(CONFIG_KVM_AMD_SEV) ? max_sev_asid : 0;
}
