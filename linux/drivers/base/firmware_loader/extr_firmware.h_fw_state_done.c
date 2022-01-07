
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_priv {int dummy; } ;


 int FW_STATUS_DONE ;
 int __fw_state_set (struct fw_priv*,int ) ;

__attribute__((used)) static inline void fw_state_done(struct fw_priv *fw_priv)
{
 __fw_state_set(fw_priv, FW_STATUS_DONE);
}
