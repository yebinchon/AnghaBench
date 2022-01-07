
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {int dummy; } ;
struct ata_port {int dummy; } ;


 int ata_sff_tf_read (struct ata_port*,struct ata_taskfile*) ;
 int nv_adma_register_mode (struct ata_port*) ;

__attribute__((used)) static void nv_adma_tf_read(struct ata_port *ap, struct ata_taskfile *tf)
{







 nv_adma_register_mode(ap);

 ata_sff_tf_read(ap, tf);
}
