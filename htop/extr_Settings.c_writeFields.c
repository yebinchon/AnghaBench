
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ProcessField ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void writeFields(FILE* fd, ProcessField* fields, const char* name) {
   fprintf(fd, "%s=", name);
   const char* sep = "";
   for (int i = 0; fields[i]; i++) {

      fprintf(fd, "%s%d", sep, (int) fields[i]-1);
      sep = " ";
   }
   fprintf(fd, "\n");
}
