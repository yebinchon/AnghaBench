
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_priv {int dummy; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 int __fw_state_wait_common (struct fw_priv*,int ) ;

__attribute__((used)) static inline int fw_state_wait(struct fw_priv *fw_priv)
{
 return __fw_state_wait_common(fw_priv, MAX_SCHEDULE_TIMEOUT);
}
