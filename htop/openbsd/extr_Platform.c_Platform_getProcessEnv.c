
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;
typedef int pid_t ;
typedef int kvm_t ;


 int KERN_PROC_PID ;
 int KVM_NO_FILES ;
 int _POSIX2_LINE_MAX ;
 int kvm_close (int *) ;
 char** kvm_getenvv (int *,struct kinfo_proc*,int ) ;
 struct kinfo_proc* kvm_getprocs (int *,int ,int ,int,int*) ;
 int * kvm_openfiles (int *,int *,int *,int ,char*) ;
 int strlcpy (char*,char*,size_t) ;
 int strlen (char*) ;
 char* xMalloc (size_t) ;
 char* xRealloc (char*,size_t) ;

char* Platform_getProcessEnv(pid_t pid) {
   char errbuf[_POSIX2_LINE_MAX];
   char *env;
   char **ptr;
   int count;
   kvm_t *kt;
   struct kinfo_proc *kproc;
   size_t capacity = 4096, size = 0;

   if ((kt = kvm_openfiles(((void*)0), ((void*)0), ((void*)0), KVM_NO_FILES, errbuf)) == ((void*)0))
      return ((void*)0);

   if ((kproc = kvm_getprocs(kt, KERN_PROC_PID, pid,
                             sizeof(struct kinfo_proc), &count)) == ((void*)0)) { (void) kvm_close(kt);

      return ((void*)0);
   }

   if ((ptr = kvm_getenvv(kt, kproc, 0)) == ((void*)0)) {
      (void) kvm_close(kt);
      return ((void*)0);
   }

   env = xMalloc(capacity);
   for (char **p = ptr; *p; p++) {
      size_t len = strlen(*p) + 1;

      if (size + len > capacity) {
         capacity *= 2;
         env = xRealloc(env, capacity);
      }

      strlcpy(env + size, *p, len);
      size += len;
   }

   if (size < 2 || env[size - 1] || env[size - 2]) {
       if (size + 2 < capacity)
           env = xRealloc(env, capacity + 2);
       env[size] = 0;
       env[size+1] = 0;
   }

   (void) kvm_close(kt);
   return env;
}
