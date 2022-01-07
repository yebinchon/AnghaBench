
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_dev {int pos; int * cmd; } ;


 int can_add (int*,struct opal_dev*,int) ;

__attribute__((used)) static void add_token_u8(int *err, struct opal_dev *cmd, u8 tok)
{
 if (!can_add(err, cmd, 1))
  return;

 cmd->cmd[cmd->pos++] = tok;
}
