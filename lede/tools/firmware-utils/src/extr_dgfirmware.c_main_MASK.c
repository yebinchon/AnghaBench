#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* app_name ; 
 unsigned short FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned short FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 unsigned char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned short) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,char*) ; 

int FUNC14(int argc, char* argv[])
{
  char *img_fname     = NULL;
  char *rootfs_fname  = NULL;
  char *kernel_fname  = NULL;
  char *new_img_fname = NULL;

  int do_fix_checksum = 0;
  int do_write        = 0;
  int do_write_rootfs = 0;
  int do_read_rootfs  = 0;
  int do_write_kernel = 0;
  int do_read_kernel  = 0;

  int i;
  unsigned char *img;
  unsigned short img_checksum;
  unsigned short real_checksum;

  app_name = argv[0];

  for (i=1; i<argc; i++) {
    if (!FUNC10(argv[i], "-h")) {
      FUNC4();
      return 0;
    }
    else if (!FUNC10(argv[i], "-f")) {
      do_fix_checksum = 1;
    }
    else if (!FUNC10(argv[i], "-x")) {
      if (i+1 >= argc) {
	FUNC1(stderr, "%s: missing argument\n", app_name);
	return -1;
      }
      do_write_rootfs = 1;
      rootfs_fname = argv[i+1];
      i++;
    }
    else if (!FUNC10(argv[i], "-xk")) {
      if (i+1 >= argc) {
	FUNC1(stderr, "%s: missing argument\n", app_name);
	return -1;
      }
      do_write_kernel = 1;
      kernel_fname = argv[i+1];
      i++;
    }
    else if (!FUNC10(argv[i], "-m")) {
      if (i+1 >= argc) {
	FUNC1(stderr, "%s: missing argument\n", app_name);
	return -1;
      }
      do_read_rootfs = 1;
      rootfs_fname = argv[i+1];
      i++;
    }
    else if (!FUNC10(argv[i], "-k")) {
      if (i+1 >= argc) {
	FUNC1(stderr, "%s: missing argument\n", app_name);
	return -1;
      }
      do_read_kernel = 1;
      kernel_fname = argv[i+1];
      i++;
    }
    else if (!FUNC10(argv[i], "-w")) {
      if (i+1 >= argc) {
	FUNC1(stderr, "%s: missing argument\n", app_name);
	return -1;
      }
      do_write = 1;
      new_img_fname = argv[i+1];
      i++;
    }
    else if (img_fname != 0) {
      FUNC1(stderr, "%s: too many arguments\n", app_name);
      return -1;
    }
    else {
      img_fname = argv[i];
    }
  }

  if (img_fname == NULL) {
    FUNC1(stderr, "%s: missing argument\n", app_name);
    return -1;
  }

  if ((do_read_rootfs && do_write_rootfs) ||
      (do_read_kernel && do_write_kernel)) {
    FUNC1(stderr, "%s: conflictuous options\n", app_name);
    return -1;
  }

  FUNC5 ("** Read firmware file\n");
  img = FUNC6(img_fname);

  FUNC5 ("Firmware product: %s\n", img+0x3dffbd);
  FUNC5 ("Firmware version: 1.%02d.%02d\n", (img[0x3dffeb] & 0x7f), img[0x3dffec]);

  if (do_write_rootfs) {
    FUNC5 ("** Write rootfs file\n");
    FUNC13(img, rootfs_fname);
  }

  if (do_write_kernel) {
    FUNC5 ("** Write kernel file\n");
    FUNC12(img, kernel_fname);
  }

  if (do_read_rootfs) {
    FUNC5 ("** Read rootfs file\n");
    FUNC8(img, rootfs_fname);
    do_fix_checksum = 1;
  }

  if (do_read_kernel) {
    FUNC5 ("** Read kernel file\n");
    FUNC7(img, kernel_fname);
    do_fix_checksum = 1;
  }

  img_checksum = FUNC3(img);
  real_checksum = FUNC0(img);
  
  FUNC5 ("image checksum = %04x\n", img_checksum);
  FUNC5 ("real checksum  = %04x\n", real_checksum);

  if (do_fix_checksum) {
    if (img_checksum != real_checksum) {
      FUNC5 ("** Bad Checksum, fix it\n");
      FUNC9(img, real_checksum);
    }
    else {
      FUNC5 ("** Checksum is correct, good\n");
    }
  }

  if (do_write) {
    FUNC5 ("** Write image file\n");
    FUNC11(img, new_img_fname);
  }

  FUNC2(img);
  return 0;
}