
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ IMG_SIZE ;
 char* app_name ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ fwrite (unsigned char*,int,scalar_t__,int *) ;
 int perror (char*) ;
 int stderr ;

void write_img(unsigned char* img, const char *fname)
{
  FILE *fp;

  fp = fopen(fname, "wb");
  if (fp == ((void*)0)) {
    perror(app_name);
    exit(-1);
  }

  if (fwrite(img, 1, IMG_SIZE, fp) != IMG_SIZE) {
    fprintf(stderr, "%s: can't write image file\n", app_name);
    fclose(fp);
    exit(-1);
  }
}
