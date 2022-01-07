
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {char* p_comm; } ;
typedef int kvm_t ;


 int MINIMUM (size_t,size_t) ;
 char** kvm_getargv (int *,struct kinfo_proc*,int) ;
 char* malloc (size_t) ;
 size_t strlcat (char*,char*,size_t) ;
 int strlen (char*) ;
 char* xStrdup (char*) ;

char *OpenBSDProcessList_readProcessName(kvm_t* kd, struct kinfo_proc* kproc, int* basenameEnd) {
   char *s, **arg;
   size_t len = 0, n;
   int i;





   arg = kvm_getargv(kd, kproc, 500);
   if (arg == ((void*)0) || *arg == ((void*)0)) {
      *basenameEnd = strlen(kproc->p_comm);
      return xStrdup(kproc->p_comm);
   }
   for (i = 0; arg[i] != ((void*)0); i++) {
      len += strlen(arg[i]) + 1;
   }

   if ((s = malloc(len)) == ((void*)0)) {
      *basenameEnd = strlen(kproc->p_comm);
      return xStrdup(kproc->p_comm);
   }

   *s = '\0';

   for (i = 0; arg[i] != ((void*)0); i++) {
      n = strlcat(s, arg[i], len);
      if (i == 0) {

         *basenameEnd = MINIMUM(n, len-1);
      }

      strlcat(s, " ", len);
   }

   return s;
}
