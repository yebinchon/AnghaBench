
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_taskfile {int dummy; } ;
struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sff_exec_command ) (struct ata_port*,struct ata_taskfile const*) ;int (* sff_tf_load ) (struct ata_port*,struct ata_taskfile const*) ;} ;


 int stub1 (struct ata_port*,struct ata_taskfile const*) ;
 int stub2 (struct ata_port*,struct ata_taskfile const*) ;

__attribute__((used)) static inline void ata_tf_to_host(struct ata_port *ap,
      const struct ata_taskfile *tf)
{
 ap->ops->sff_tf_load(ap, tf);
 ap->ops->sff_exec_command(ap, tf);
}
