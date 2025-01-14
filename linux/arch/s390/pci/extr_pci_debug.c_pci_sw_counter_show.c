
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int allocated_pages; } ;
struct seq_file {struct zpci_dev* private; } ;
typedef int atomic64_t ;


 int ARRAY_SIZE (int *) ;
 int atomic64_read (int *) ;
 int * pci_sw_names ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static void pci_sw_counter_show(struct seq_file *m)
{
 struct zpci_dev *zdev = m->private;
 atomic64_t *counter = &zdev->allocated_pages;
 int i;

 for (i = 0; i < ARRAY_SIZE(pci_sw_names); i++, counter++)
  seq_printf(m, "%26s:\t%llu\n", pci_sw_names[i],
      atomic64_read(counter));
}
