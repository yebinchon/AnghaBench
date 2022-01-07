
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* setprop ) (void*,char const*,char const*,scalar_t__) ;} ;


 TYPE_1__ dt_ops ;
 scalar_t__ strlen (char const*) ;
 int stub1 (void*,char const*,char const*,scalar_t__) ;

__attribute__((used)) static inline int setprop_str(void *devp, const char *name, const char *buf)
{
 if (dt_ops.setprop)
  return dt_ops.setprop(devp, name, buf, strlen(buf) + 1);

 return -1;
}
