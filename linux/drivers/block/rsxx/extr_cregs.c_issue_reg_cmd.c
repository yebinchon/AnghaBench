
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_reg_access {int stat; int stream; int data; int cnt; int addr; } ;
struct rsxx_cardinfo {int dummy; } ;


 unsigned int CREG_OP_READ ;
 unsigned int CREG_OP_WRITE ;
 int __issue_creg_rw (struct rsxx_cardinfo*,unsigned int,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int issue_reg_cmd(struct rsxx_cardinfo *card,
    struct rsxx_reg_access *cmd,
    int read)
{
 unsigned int op = read ? CREG_OP_READ : CREG_OP_WRITE;

 return __issue_creg_rw(card, op, cmd->addr, cmd->cnt, cmd->data,
          cmd->stream, &cmd->stat);
}
