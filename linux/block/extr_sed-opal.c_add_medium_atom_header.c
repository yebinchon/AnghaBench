
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_dev {int* cmd; int pos; } ;


 int MEDIUM_ATOM_BYTESTRING ;
 int MEDIUM_ATOM_ID ;
 int MEDIUM_ATOM_LEN_MASK ;
 int MEDIUM_ATOM_SIGNED ;

__attribute__((used)) static void add_medium_atom_header(struct opal_dev *cmd, bool bytestring,
       bool has_sign, int len)
{
 u8 header0;

 header0 = MEDIUM_ATOM_ID;
 header0 |= bytestring ? MEDIUM_ATOM_BYTESTRING : 0;
 header0 |= has_sign ? MEDIUM_ATOM_SIGNED : 0;
 header0 |= (len >> 8) & MEDIUM_ATOM_LEN_MASK;

 cmd->cmd[cmd->pos++] = header0;
 cmd->cmd[cmd->pos++] = len;
}
