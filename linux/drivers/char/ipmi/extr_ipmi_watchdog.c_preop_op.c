
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int WDOG_PREOP_GIVE_DATA ;
 int WDOG_PREOP_NONE ;
 int WDOG_PREOP_PANIC ;
 char* preop ;
 int preop_val ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static int preop_op(const char *inval, char *outval)
{
 if (outval)
  strcpy(outval, preop);

 if (!inval)
  return 0;

 if (strcmp(inval, "preop_none") == 0)
  preop_val = WDOG_PREOP_NONE;
 else if (strcmp(inval, "preop_panic") == 0)
  preop_val = WDOG_PREOP_PANIC;
 else if (strcmp(inval, "preop_give_data") == 0)
  preop_val = WDOG_PREOP_GIVE_DATA;
 else
  return -EINVAL;
 strcpy(preop, inval);
 return 0;
}
