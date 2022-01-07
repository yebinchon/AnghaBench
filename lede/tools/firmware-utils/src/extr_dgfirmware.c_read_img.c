
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int IMG_SIZE ;
 int SEEK_END ;
 char* app_name ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 unsigned char* malloc (int) ;
 int perror (char*) ;
 int rewind (int *) ;
 int stderr ;

unsigned char* read_img(const char *fname)
{
  FILE *fp;
  int size;
  unsigned char *img;

  fp = fopen(fname, "rb");
  if (fp == ((void*)0)) {
    perror(app_name);
    exit(-1);
  }

  fseek(fp, 0, SEEK_END);
  size = ftell(fp);

  if (size != IMG_SIZE) {
    fprintf(stderr, "%s: image file has wrong size\n", app_name);
    fclose(fp);
    exit(-1);
  }

  rewind(fp);

  img = malloc(IMG_SIZE);
  if (img == ((void*)0)) {
    perror(app_name);
    fclose(fp);
    exit(-1);
  }

  if (fread(img, 1, IMG_SIZE, fp) != IMG_SIZE) {
    fprintf(stderr, "%s: can't read image file\n", app_name);
    fclose(fp);
    exit(-1);
  }

  fclose(fp);
  return img;
}
