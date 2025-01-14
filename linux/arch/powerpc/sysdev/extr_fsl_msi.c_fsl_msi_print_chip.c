
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct irq_data {TYPE_1__* domain; } ;
struct fsl_msi {int srs_shift; TYPE_2__** cascade_array; } ;
typedef int irq_hw_number_t ;
struct TYPE_4__ {int virq; } ;
struct TYPE_3__ {struct fsl_msi* host_data; } ;


 int MSI_SRS_MASK ;
 int irqd_to_hwirq (struct irq_data*) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static void fsl_msi_print_chip(struct irq_data *irqd, struct seq_file *p)
{
 struct fsl_msi *msi_data = irqd->domain->host_data;
 irq_hw_number_t hwirq = irqd_to_hwirq(irqd);
 int cascade_virq, srs;

 srs = (hwirq >> msi_data->srs_shift) & MSI_SRS_MASK;
 cascade_virq = msi_data->cascade_array[srs]->virq;

 seq_printf(p, " fsl-msi-%d", cascade_virq);
}
