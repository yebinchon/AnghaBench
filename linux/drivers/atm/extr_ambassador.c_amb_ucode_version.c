
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int minor; int major; } ;
struct TYPE_6__ {TYPE_1__ version; } ;
struct TYPE_7__ {TYPE_2__ args; int request; } ;
typedef TYPE_3__ command ;
typedef int amb_dev ;


 int KERN_INFO ;
 int PRINTK (int ,char*,int ,int ) ;
 int SRB_GET_VERSION ;
 int TASK_UNINTERRUPTIBLE ;
 int be32_to_cpu (int ) ;
 scalar_t__ command_do (int *,TYPE_3__*) ;
 int cpu_to_be32 (int ) ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static void amb_ucode_version(amb_dev *dev)
{
  u32 major;
  u32 minor;
  command cmd;
  cmd.request = cpu_to_be32 (SRB_GET_VERSION);
  while (command_do (dev, &cmd)) {
    set_current_state(TASK_UNINTERRUPTIBLE);
    schedule();
  }
  major = be32_to_cpu (cmd.args.version.major);
  minor = be32_to_cpu (cmd.args.version.minor);
  PRINTK (KERN_INFO, "microcode version is %u.%u", major, minor);
}
