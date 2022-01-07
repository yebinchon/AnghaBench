
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_priv {int dummy; } ;


 int __fw_state_wait_common (struct fw_priv*,long) ;

__attribute__((used)) static inline int fw_sysfs_wait_timeout(struct fw_priv *fw_priv, long timeout)
{
 return __fw_state_wait_common(fw_priv, timeout);
}
