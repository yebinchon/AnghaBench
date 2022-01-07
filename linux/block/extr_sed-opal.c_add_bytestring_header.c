
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_dev {size_t pos; int * cmd; } ;


 size_t SHORT_ATOM_LEN_MASK ;
 int add_medium_atom_header (struct opal_dev*,int,int,size_t) ;
 int add_short_atom_header (struct opal_dev*,int,int,size_t) ;
 int can_add (int*,struct opal_dev*,size_t) ;
 int pr_debug (char*) ;

__attribute__((used)) static u8 *add_bytestring_header(int *err, struct opal_dev *cmd, size_t len)
{
 size_t header_len = 1;
 bool is_short_atom = 1;

 if (len & ~SHORT_ATOM_LEN_MASK) {
  header_len = 2;
  is_short_atom = 0;
 }

 if (!can_add(err, cmd, header_len + len)) {
  pr_debug("Error adding bytestring: end of buffer.\n");
  return ((void*)0);
 }

 if (is_short_atom)
  add_short_atom_header(cmd, 1, 0, len);
 else
  add_medium_atom_header(cmd, 1, 0, len);

 return &cmd->cmd[cmd->pos];
}
