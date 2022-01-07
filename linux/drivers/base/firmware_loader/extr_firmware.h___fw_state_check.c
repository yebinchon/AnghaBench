
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_state {int status; } ;
struct fw_priv {struct fw_state fw_st; } ;
typedef enum fw_status { ____Placeholder_fw_status } fw_status ;



__attribute__((used)) static inline bool __fw_state_check(struct fw_priv *fw_priv,
        enum fw_status status)
{
 struct fw_state *fw_st = &fw_priv->fw_st;

 return fw_st->status == status;
}
