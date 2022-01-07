
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsxx_cardinfo {int dummy; } ;
typedef int cmd ;


 int CREG_ADD_CARD_CMD ;
 int rsxx_creg_write (struct rsxx_cardinfo*,int ,int,int *,int ) ;

int rsxx_issue_card_cmd(struct rsxx_cardinfo *card, u32 cmd)
{
 return rsxx_creg_write(card, CREG_ADD_CARD_CMD,
       sizeof(cmd), &cmd, 0);
}
