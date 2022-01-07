
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bzimage64_data {int * bootparams_buf; } ;


 int kfree (int *) ;

__attribute__((used)) static int bzImage64_cleanup(void *loader_data)
{
 struct bzimage64_data *ldata = loader_data;

 if (!ldata)
  return 0;

 kfree(ldata->bootparams_buf);
 ldata->bootparams_buf = ((void*)0);

 return 0;
}
