
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int KMMIO_PAGE_TABLE_SIZE ;
 int * kmmio_page_table ;
 int nb_die ;
 int register_die_notifier (int *) ;

int kmmio_init(void)
{
 int i;

 for (i = 0; i < KMMIO_PAGE_TABLE_SIZE; i++)
  INIT_LIST_HEAD(&kmmio_page_table[i]);

 return register_die_notifier(&nb_die);
}
