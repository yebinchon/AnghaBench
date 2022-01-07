
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int exit (int) ;
 int * getcwd (char*,size_t) ;
 int perror (char*) ;
 int strcat (char*,char*) ;

void Q_getwd (char *out, size_t size)
{
   assert(size >= 2);
   if (((void*)0) == getcwd(out, size - 2)) {
      perror("getcwd");
      exit(1);
   }



   strcat(out, "/");

}
