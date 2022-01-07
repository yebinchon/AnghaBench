
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int loadparm; } ;
struct ipl_parameter_block {TYPE_1__ common; } ;
typedef size_t ssize_t ;


 int ASCEBC (int ,int) ;
 size_t EINVAL ;
 int IPL_PB0_FLAG_LOADPARM ;
 int LOADPARM_LEN ;
 scalar_t__ isalpha (char const) ;
 scalar_t__ isdigit (char const) ;
 int memcpy (int ,char const*,int) ;
 int memset (int ,char,int) ;

__attribute__((used)) static ssize_t reipl_generic_loadparm_store(struct ipl_parameter_block *ipb,
         const char *buf, size_t len)
{
 int i, lp_len;


 lp_len = len;
 if ((len > 0) && (buf[len - 1] == '\n'))
  lp_len--;

 if ((lp_len > LOADPARM_LEN) || ((lp_len > 0) && (buf[0] == ' ')))
  return -EINVAL;

 for (i = 0; i < lp_len; i++) {
  if (isalpha(buf[i]) || isdigit(buf[i]) || (buf[i] == ' ') ||
      (buf[i] == '.'))
   continue;
  return -EINVAL;
 }

 memset(ipb->common.loadparm, ' ', LOADPARM_LEN);

 memcpy(ipb->common.loadparm, buf, lp_len);
 ASCEBC(ipb->common.loadparm, LOADPARM_LEN);
 ipb->common.flags |= IPL_PB0_FLAG_LOADPARM;
 return len;
}
