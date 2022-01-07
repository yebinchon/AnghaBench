
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt_bmc {int dummy; } ;
typedef size_t ssize_t ;


 int bt_write (struct bt_bmc*,int ) ;

__attribute__((used)) static ssize_t bt_writen(struct bt_bmc *bt_bmc, u8 *buf, size_t n)
{
 int i;

 for (i = 0; i < n; i++)
  bt_write(bt_bmc, buf[i]);
 return n;
}
