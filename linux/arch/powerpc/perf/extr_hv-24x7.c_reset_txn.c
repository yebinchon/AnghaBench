
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __this_cpu_write (int ,int ) ;
 int hv_24x7_txn_err ;
 int hv_24x7_txn_flags ;

__attribute__((used)) static void reset_txn(void)
{
 __this_cpu_write(hv_24x7_txn_flags, 0);
 __this_cpu_write(hv_24x7_txn_err, 0);
}
