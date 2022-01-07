
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gethostname (char*,size_t) ;

int xgethostname(char *buf, size_t len)
{





 int ret = gethostname(buf, len);
 if (!ret)
  buf[len - 1] = 0;
 return ret;
}
