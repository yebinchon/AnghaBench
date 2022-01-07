
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_group {int count; int offset; TYPE_1__* type; int opcode; } ;
struct insn {TYPE_1__* type; int opcode; } ;
struct gen_opcode {int nr_groups; struct insn_group* group; } ;
struct TYPE_2__ {scalar_t__ byte; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int memcpy (int ,int ,int) ;
 struct insn_group* realloc (struct insn_group*,int) ;
 int strncmp (int ,int ,int) ;

__attribute__((used)) static void add_to_group(struct gen_opcode *desc, struct insn *insn, int offset)
{
 struct insn_group *group;

 group = desc->group ? &desc->group[desc->nr_groups - 1] : ((void*)0);
 if (group && (!strncmp(group->opcode, insn->opcode, 2) || group->type->byte == 0)) {
  group->count++;
  return;
 }
 desc->nr_groups++;
 desc->group = realloc(desc->group, desc->nr_groups * sizeof(*desc->group));
 if (!desc->group)
  exit(EXIT_FAILURE);
 group = &desc->group[desc->nr_groups - 1];
 memcpy(group->opcode, insn->opcode, 2);
 group->type = insn->type;
 group->offset = offset;
 group->count = 1;
}
