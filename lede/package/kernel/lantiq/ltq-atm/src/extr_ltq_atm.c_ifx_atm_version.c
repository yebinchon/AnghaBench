
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_atm_ops {int (* fw_ver ) (unsigned int*,unsigned int*) ;} ;


 int IFX_ATM_VER_MAJOR ;
 int IFX_ATM_VER_MID ;
 int IFX_ATM_VER_MINOR ;
 scalar_t__ sprintf (char*,char*,unsigned int,unsigned int,...) ;
 int stub1 (unsigned int*,unsigned int*) ;

__attribute__((used)) static inline int ifx_atm_version(const struct ltq_atm_ops *ops, char *buf)
{
 int len = 0;
 unsigned int major, minor;

 ops->fw_ver(&major, &minor);

 len += sprintf(buf + len, "ATM%d.%d.%d", IFX_ATM_VER_MAJOR, IFX_ATM_VER_MID, IFX_ATM_VER_MINOR);
 len += sprintf(buf + len, "    ATM (A1) firmware version %d.%d\n", major, minor);

 return len;
}
