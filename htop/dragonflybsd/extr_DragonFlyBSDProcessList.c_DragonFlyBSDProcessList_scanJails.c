
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ jails; } ;
typedef TYPE_1__ DragonFlyBSDProcessList ;


 scalar_t__ ENOMEM ;
 int Hashtable_delete (scalar_t__) ;
 scalar_t__ Hashtable_get (scalar_t__,int) ;
 scalar_t__ Hashtable_new (int,int) ;
 int Hashtable_put (scalar_t__,int,char*) ;
 int atoi (char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strtok (char*,char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;
 char* xMalloc (size_t) ;
 char* xStrdup (char*) ;

__attribute__((used)) static inline void DragonFlyBSDProcessList_scanJails(DragonFlyBSDProcessList* dfpl) {
   size_t len;
   char *jls;
   char *curpos;
   char *nextpos;

   if (sysctlbyname("jail.list", ((void*)0), &len, ((void*)0), 0) == -1) {
      fprintf(stderr, "initial sysctlbyname / jail.list failed\n");
      exit(3);
   }
retry:
   if (len == 0)
      return;

   jls = xMalloc(len);
   if (jls == ((void*)0)) {
      fprintf(stderr, "xMalloc failed\n");
      exit(4);
   }
   if (sysctlbyname("jail.list", jls, &len, ((void*)0), 0) == -1) {
      if (errno == ENOMEM) {
         free(jls);
         goto retry;
      }
      fprintf(stderr, "sysctlbyname / jail.list failed\n");
      exit(5);
   }

   if (dfpl->jails) {
      Hashtable_delete(dfpl->jails);
   }
   dfpl->jails = Hashtable_new(20, 1);
   curpos = jls;
   while (curpos) {
      int jailid;
      char *str_hostname;
      nextpos = strchr(curpos, '\n');
      if (nextpos)
         *nextpos++ = 0;

      jailid = atoi(strtok(curpos, " "));
      str_hostname = strtok(((void*)0), " ");

      char *jname = (char *) (Hashtable_get(dfpl->jails, jailid));
      if (jname == ((void*)0)) {
         jname = xStrdup(str_hostname);
         Hashtable_put(dfpl->jails, jailid, jname);
      }

      curpos = nextpos;
  }
  free(jls);
}
