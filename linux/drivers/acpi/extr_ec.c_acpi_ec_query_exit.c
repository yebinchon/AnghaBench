
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int *) ;
 int * ec_query_wq ;

__attribute__((used)) static inline void acpi_ec_query_exit(void)
{
 if (ec_query_wq) {
  destroy_workqueue(ec_query_wq);
  ec_query_wq = ((void*)0);
 }
}
