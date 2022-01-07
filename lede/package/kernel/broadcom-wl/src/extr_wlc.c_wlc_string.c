
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int GET ;
 int PARAM_MODE ;
 int strcpy (void*,char*) ;

__attribute__((used)) static int wlc_string(wlc_param param, void *data, void *value)
{
 char *var = *((char **) data);

 if ((param & PARAM_MODE) == GET) {
  strcpy(value, var);
 }

 return 0;
}
