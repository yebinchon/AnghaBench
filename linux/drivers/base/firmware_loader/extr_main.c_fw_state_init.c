
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_state {int status; int completion; } ;
struct fw_priv {struct fw_state fw_st; } ;


 int FW_STATUS_UNKNOWN ;
 int init_completion (int *) ;

__attribute__((used)) static void fw_state_init(struct fw_priv *fw_priv)
{
 struct fw_state *fw_st = &fw_priv->fw_st;

 init_completion(&fw_st->completion);
 fw_st->status = FW_STATUS_UNKNOWN;
}
