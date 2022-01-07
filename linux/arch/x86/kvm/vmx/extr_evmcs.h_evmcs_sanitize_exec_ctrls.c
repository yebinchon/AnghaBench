
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs_config {int dummy; } ;



__attribute__((used)) static inline void evmcs_sanitize_exec_ctrls(struct vmcs_config *vmcs_conf) {}
