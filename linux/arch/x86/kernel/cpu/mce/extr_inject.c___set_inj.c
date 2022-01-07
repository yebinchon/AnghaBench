
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int N_INJ_TYPES ;
 int * flags_options ;
 int inj_type ;
 int strlen (int ) ;
 int strncmp (int ,char const*,int ) ;

__attribute__((used)) static int __set_inj(const char *buf)
{
 int i;

 for (i = 0; i < N_INJ_TYPES; i++) {
  if (!strncmp(flags_options[i], buf, strlen(flags_options[i]))) {
   inj_type = i;
   return 0;
  }
 }
 return -EINVAL;
}
