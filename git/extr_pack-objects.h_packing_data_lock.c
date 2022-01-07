
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {int odb_lock; } ;


 int pthread_mutex_lock (int *) ;

__attribute__((used)) static inline void packing_data_lock(struct packing_data *pdata)
{
 pthread_mutex_lock(&pdata->odb_lock);
}
