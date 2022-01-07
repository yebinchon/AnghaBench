
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_priv {int dummy; } ;


 int FW_STATUS_LOADING ;
 int __fw_state_check (struct fw_priv*,int ) ;

__attribute__((used)) static inline bool fw_sysfs_loading(struct fw_priv *fw_priv)
{
 return __fw_state_check(fw_priv, FW_STATUS_LOADING);
}
