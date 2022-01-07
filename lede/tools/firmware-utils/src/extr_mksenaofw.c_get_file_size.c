
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;

__attribute__((used)) static long get_file_size(const char *filename)
{
 FILE *fp_file;
 long result;

 fp_file = fopen(filename, "r");
 if (!fp_file)
  return -1;
 fseek(fp_file, 0, SEEK_END);
 result = ftell(fp_file);
 fclose(fp_file);
 return result;
}
