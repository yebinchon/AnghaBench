
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read ) (int ) ;} ;
struct drv_cmd {int reg; TYPE_1__ func; int val; } ;


 int stub1 (int ) ;

__attribute__((used)) static void do_drv_read(void *_cmd)
{
 struct drv_cmd *cmd = _cmd;

 cmd->val = cmd->func.read(cmd->reg);
}
