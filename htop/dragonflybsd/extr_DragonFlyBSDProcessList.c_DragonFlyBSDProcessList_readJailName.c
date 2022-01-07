
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ jails; } ;
typedef TYPE_1__ DragonFlyBSDProcessList ;


 scalar_t__ Hashtable_get (scalar_t__,int) ;
 char* xStrdup (char*) ;

char* DragonFlyBSDProcessList_readJailName(DragonFlyBSDProcessList* dfpl, int jailid) {
   char* hostname;
   char* jname;

   if (jailid != 0 && dfpl->jails && (hostname = (char *)Hashtable_get(dfpl->jails, jailid))) {
      jname = xStrdup(hostname);
   } else {
      jname = xStrdup("-");
   }
   return jname;
}
