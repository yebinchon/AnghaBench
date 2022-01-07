
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_cmd {int tag; int nq; } ;


 int put_tag (int ,int ) ;

__attribute__((used)) static void free_cmd(struct nullb_cmd *cmd)
{
 put_tag(cmd->nq, cmd->tag);
}
