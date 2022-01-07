
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* write ) (int ,int ) ;} ;
struct drv_cmd {int val; int reg; TYPE_1__ func; } ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void do_drv_write(void *_cmd)
{
 struct drv_cmd *cmd = _cmd;

 cmd->func.write(cmd->reg, cmd->val);
}
