
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt_bmc {int dummy; } ;
typedef size_t ssize_t ;


 int bt_read (struct bt_bmc*) ;

__attribute__((used)) static ssize_t bt_readn(struct bt_bmc *bt_bmc, u8 *buf, size_t n)
{
 int i;

 for (i = 0; i < n; i++)
  buf[i] = bt_read(bt_bmc);
 return n;
}
