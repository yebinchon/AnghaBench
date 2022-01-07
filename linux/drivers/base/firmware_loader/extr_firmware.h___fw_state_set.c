
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_state {int completion; int status; } ;
struct fw_priv {struct fw_state fw_st; } ;
typedef enum fw_status { ____Placeholder_fw_status } fw_status ;


 int FW_STATUS_ABORTED ;
 int FW_STATUS_DONE ;
 int WRITE_ONCE (int ,int) ;
 int complete_all (int *) ;

__attribute__((used)) static inline void __fw_state_set(struct fw_priv *fw_priv,
      enum fw_status status)
{
 struct fw_state *fw_st = &fw_priv->fw_st;

 WRITE_ONCE(fw_st->status, status);

 if (status == FW_STATUS_DONE || status == FW_STATUS_ABORTED)
  complete_all(&fw_st->completion);
}
