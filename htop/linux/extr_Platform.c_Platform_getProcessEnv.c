
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,size_t,int *) ;
 char* xMalloc (size_t) ;
 char* xRealloc (char*,size_t) ;
 int xSnprintf (char*,int,char*,int ) ;

char* Platform_getProcessEnv(pid_t pid) {
   char procname[32+1];
   xSnprintf(procname, 32, "/proc/%d/environ", pid);
   FILE* fd = fopen(procname, "r");
   char *env = ((void*)0);
   if (fd) {
      size_t capacity = 4096, size = 0, bytes;
      env = xMalloc(capacity);
      while (env && (bytes = fread(env+size, 1, capacity-size, fd)) > 0) {
         size += bytes;
         capacity *= 2;
         env = xRealloc(env, capacity);
      }
      fclose(fd);
      if (size < 2 || env[size-1] || env[size-2]) {
         if (size + 2 < capacity) {
            env = xRealloc(env, capacity+2);
         }
         env[size] = 0;
         env[size+1] = 0;
      }
   }
   return env;
}
