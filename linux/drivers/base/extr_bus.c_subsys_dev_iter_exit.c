
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_dev_iter {int ki; } ;


 int klist_iter_exit (int *) ;

void subsys_dev_iter_exit(struct subsys_dev_iter *iter)
{
 klist_iter_exit(&iter->ki);
}
