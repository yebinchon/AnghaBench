
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* app_name ;
 unsigned short compute_checksum (unsigned char*) ;
 int fprintf (int ,char*,char*) ;
 int free (unsigned char*) ;
 unsigned short get_checksum (unsigned char*) ;
 int print_usage () ;
 int printf (char*,...) ;
 unsigned char* read_img (char*) ;
 int read_kernel (unsigned char*,char*) ;
 int read_rootfs (unsigned char*,char*) ;
 int set_checksum (unsigned char*,unsigned short) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int write_img (unsigned char*,char*) ;
 int write_kernel (unsigned char*,char*) ;
 int write_rootfs (unsigned char*,char*) ;

int main(int argc, char* argv[])
{
  char *img_fname = ((void*)0);
  char *rootfs_fname = ((void*)0);
  char *kernel_fname = ((void*)0);
  char *new_img_fname = ((void*)0);

  int do_fix_checksum = 0;
  int do_write = 0;
  int do_write_rootfs = 0;
  int do_read_rootfs = 0;
  int do_write_kernel = 0;
  int do_read_kernel = 0;

  int i;
  unsigned char *img;
  unsigned short img_checksum;
  unsigned short real_checksum;

  app_name = argv[0];

  for (i=1; i<argc; i++) {
    if (!strcmp(argv[i], "-h")) {
      print_usage();
      return 0;
    }
    else if (!strcmp(argv[i], "-f")) {
      do_fix_checksum = 1;
    }
    else if (!strcmp(argv[i], "-x")) {
      if (i+1 >= argc) {
 fprintf(stderr, "%s: missing argument\n", app_name);
 return -1;
      }
      do_write_rootfs = 1;
      rootfs_fname = argv[i+1];
      i++;
    }
    else if (!strcmp(argv[i], "-xk")) {
      if (i+1 >= argc) {
 fprintf(stderr, "%s: missing argument\n", app_name);
 return -1;
      }
      do_write_kernel = 1;
      kernel_fname = argv[i+1];
      i++;
    }
    else if (!strcmp(argv[i], "-m")) {
      if (i+1 >= argc) {
 fprintf(stderr, "%s: missing argument\n", app_name);
 return -1;
      }
      do_read_rootfs = 1;
      rootfs_fname = argv[i+1];
      i++;
    }
    else if (!strcmp(argv[i], "-k")) {
      if (i+1 >= argc) {
 fprintf(stderr, "%s: missing argument\n", app_name);
 return -1;
      }
      do_read_kernel = 1;
      kernel_fname = argv[i+1];
      i++;
    }
    else if (!strcmp(argv[i], "-w")) {
      if (i+1 >= argc) {
 fprintf(stderr, "%s: missing argument\n", app_name);
 return -1;
      }
      do_write = 1;
      new_img_fname = argv[i+1];
      i++;
    }
    else if (img_fname != 0) {
      fprintf(stderr, "%s: too many arguments\n", app_name);
      return -1;
    }
    else {
      img_fname = argv[i];
    }
  }

  if (img_fname == ((void*)0)) {
    fprintf(stderr, "%s: missing argument\n", app_name);
    return -1;
  }

  if ((do_read_rootfs && do_write_rootfs) ||
      (do_read_kernel && do_write_kernel)) {
    fprintf(stderr, "%s: conflictuous options\n", app_name);
    return -1;
  }

  printf ("** Read firmware file\n");
  img = read_img(img_fname);

  printf ("Firmware product: %s\n", img+0x3dffbd);
  printf ("Firmware version: 1.%02d.%02d\n", (img[0x3dffeb] & 0x7f), img[0x3dffec]);

  if (do_write_rootfs) {
    printf ("** Write rootfs file\n");
    write_rootfs(img, rootfs_fname);
  }

  if (do_write_kernel) {
    printf ("** Write kernel file\n");
    write_kernel(img, kernel_fname);
  }

  if (do_read_rootfs) {
    printf ("** Read rootfs file\n");
    read_rootfs(img, rootfs_fname);
    do_fix_checksum = 1;
  }

  if (do_read_kernel) {
    printf ("** Read kernel file\n");
    read_kernel(img, kernel_fname);
    do_fix_checksum = 1;
  }

  img_checksum = get_checksum(img);
  real_checksum = compute_checksum(img);

  printf ("image checksum = %04x\n", img_checksum);
  printf ("real checksum  = %04x\n", real_checksum);

  if (do_fix_checksum) {
    if (img_checksum != real_checksum) {
      printf ("** Bad Checksum, fix it\n");
      set_checksum(img, real_checksum);
    }
    else {
      printf ("** Checksum is correct, good\n");
    }
  }

  if (do_write) {
    printf ("** Write image file\n");
    write_img(img, new_img_fname);
  }

  free(img);
  return 0;
}
