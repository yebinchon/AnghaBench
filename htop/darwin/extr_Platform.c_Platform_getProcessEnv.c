
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int argmax ;


 int CTL_KERN ;
 int KERN_ARGMAX ;
 int KERN_PROCARGS2 ;
 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 char* strchr (char*,int ) ;
 char* strrchr (char*,int ) ;
 scalar_t__ sysctl (int*,int,...) ;
 char* xMalloc (size_t) ;

char* Platform_getProcessEnv(pid_t pid) {
   char* env = ((void*)0);

   int argmax;
   size_t bufsz = sizeof(argmax);

   int mib[3];
   mib[0] = CTL_KERN;
   mib[1] = KERN_ARGMAX;
   if (sysctl(mib, 2, &argmax, &bufsz, 0, 0) == 0) {
      char* buf = xMalloc(argmax);
      if (buf) {
         mib[0] = CTL_KERN;
         mib[1] = KERN_PROCARGS2;
         mib[2] = pid;
         size_t bufsz = argmax;
         if (sysctl(mib, 3, buf, &bufsz, 0, 0) == 0) {
            if (bufsz > sizeof(int)) {
               char *p = buf, *endp = buf + bufsz;
               int argc = *(int*)p;
               p += sizeof(int);


               p = strchr(p, 0)+1;


               while(!*p && p < endp)
                  ++p;


               for (; argc-- && p < endp; p = strrchr(p, 0)+1)
                  ;


               while(!*p && p < endp)
                  ++p;

               size_t size = endp - p;
               env = xMalloc(size+2);
               memcpy(env, p, size);
               env[size] = 0;
               env[size+1] = 0;
            }
         }
         free(buf);
      }
   }

   return env;
}
