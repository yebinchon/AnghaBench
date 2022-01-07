
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int copy_file (int *,int *) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 char** o_images ;
 size_t o_isize ;
 int o_meta ;
 int o_msize ;
 int printf (char*,char*) ;
 scalar_t__ verify_seama (char*,int ) ;
 int write_meta_data (int *,int ,int ) ;
 int write_seama_header (int *,int ,int ,int ) ;

__attribute__((used)) static void seal_files(const char * file)
{
 FILE * fh;
 FILE * ifh;
 size_t i;


 for (i = 0; i < o_isize; i++)
 {
  if (verify_seama(o_images[i], 0) < 0)
  {
   printf("'%s' is not a seama file !\n",o_images[i]);
   return;
  }
 }


 fh = fopen(file, "w+");
 if (fh)
 {

  write_seama_header(fh, o_meta, o_msize, 0);
  write_meta_data(fh, o_meta, o_msize);


  for (i=0; i<o_isize; i++)
  {
   ifh = fopen(o_images[i], "r+");
   if (ifh)
   {
    copy_file(fh, ifh);
    fclose(ifh);
   }
  }

  fclose(fh);
 }
}
