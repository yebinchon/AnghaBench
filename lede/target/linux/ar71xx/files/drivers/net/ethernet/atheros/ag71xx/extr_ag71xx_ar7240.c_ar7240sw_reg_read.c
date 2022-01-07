
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int dummy; } ;


 int __ar7240sw_reg_read (struct mii_bus*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_mutex ;

__attribute__((used)) static u32 ar7240sw_reg_read(struct mii_bus *mii, u32 reg_addr)
{
 u32 ret;

 mutex_lock(&reg_mutex);
 ret = __ar7240sw_reg_read(mii, reg_addr);
 mutex_unlock(&reg_mutex);

 return ret;
}
