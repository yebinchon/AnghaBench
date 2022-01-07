
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ASSERT (int *) ;
 int FIXTURE ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fputc (char,int *) ;

__attribute__((used)) static void touch_file(const char* path) {
  static int count;
  FILE* fp;
  int i;

  ASSERT((fp = fopen(FIXTURE, "w+")));




  i = ++count;

  while (i--)
    fputc('*', fp);

  fclose(fp);
}
