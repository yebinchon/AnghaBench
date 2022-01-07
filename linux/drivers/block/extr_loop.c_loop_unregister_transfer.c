
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_func_table {int dummy; } ;


 int EINVAL ;
 unsigned int MAX_LO_CRYPT ;
 int idr_for_each (int *,int *,struct loop_func_table*) ;
 int loop_index_idr ;
 int unregister_transfer_cb ;
 struct loop_func_table** xfer_funcs ;

int loop_unregister_transfer(int number)
{
 unsigned int n = number;
 struct loop_func_table *xfer;

 if (n == 0 || n >= MAX_LO_CRYPT || (xfer = xfer_funcs[n]) == ((void*)0))
  return -EINVAL;

 xfer_funcs[n] = ((void*)0);
 idr_for_each(&loop_index_idr, &unregister_transfer_cb, xfer);
 return 0;
}
