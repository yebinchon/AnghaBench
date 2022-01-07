
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int KERNEL_SIZE ;
 int KERNEL_START ;
 int SEEK_END ;
 char* app_name ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int perror (char*) ;
 int rewind (int *) ;
 int stderr ;

unsigned char* read_kernel(unsigned char* img, const char *fname)
{
  FILE *fp;
  int size;
  int i;

  for (i=KERNEL_START; i<KERNEL_START+KERNEL_SIZE; i++)
    img[i] = 0xff;

  fp = fopen(fname, "rb");
  if (fp == ((void*)0)) {
    perror(app_name);
    exit(-1);
  }

  fseek(fp, 0, SEEK_END);
  size = ftell(fp);

  if (size > KERNEL_SIZE) {
    fprintf(stderr, "%s: kernel binary file is too big\n", app_name);
    fclose(fp);
    exit(-1);
  }

  rewind(fp);

  if (fread(img+KERNEL_START, 1, size, fp) != size) {
    fprintf(stderr, "%s: can't read kernel file\n", app_name);
    fclose(fp);
    exit(-1);
  }

  fclose(fp);
  return img;
}
