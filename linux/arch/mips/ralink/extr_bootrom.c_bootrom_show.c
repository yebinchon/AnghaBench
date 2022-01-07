
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int BOOTROM_SIZE ;
 int membase ;
 int seq_write (struct seq_file*,int ,int ) ;

__attribute__((used)) static int bootrom_show(struct seq_file *s, void *unused)
{
 seq_write(s, membase, BOOTROM_SIZE);

 return 0;
}
