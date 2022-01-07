
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_priv {int dummy; } ;
struct firmware {struct fw_priv* priv; } ;


 int fw_state_aborted (struct fw_priv*) ;
 int fw_state_is_aborted (struct fw_priv*) ;

__attribute__((used)) static void fw_abort_batch_reqs(struct firmware *fw)
{
 struct fw_priv *fw_priv;


 if (!fw || !fw->priv)
  return;

 fw_priv = fw->priv;
 if (!fw_state_is_aborted(fw_priv))
  fw_state_aborted(fw_priv);
}
