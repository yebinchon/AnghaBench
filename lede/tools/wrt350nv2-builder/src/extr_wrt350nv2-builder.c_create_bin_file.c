
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int filesize; int size; char* filename; char* name; int offset; } ;
typedef TYPE_1__ mtd_info ;
typedef int FILE ;


 int BOOT_ADDR_BASE_OFF ;
 int DEBUG ;
 int DEBUG_LVL2 ;
 int FLASH_SIZE ;
 int FW_VERSION_OFFSET ;
 int KERNEL_CODE_OFFSET ;
 int NODE_BASE_OFF ;
 int PID_OFFSET ;
 int PRODUCT_ID_OFFSET ;
 int PROTOCOL_ID_OFFSET ;
 int ROOTFS_MIN_OFFSET ;
 int SIGN_OFFSET ;
 int errno ;
 int fclose (int *) ;
 int ferror (int *) ;
 int * fopen (char*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int fw_version ;
 int fwrite (unsigned char*,int,int,int *) ;
 int lprintf (int ,char*,...) ;
 unsigned char* malloc (int) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 TYPE_1__ mtd_image ;
 TYPE_1__ mtd_kernel ;
 TYPE_1__ mtd_rootfs ;
 TYPE_1__ mtd_uboot ;
 int pid ;
 int printf (char*,...) ;
 int product_id ;
 int protocol_id ;
 int rootfs_unknown ;
 int sign ;
 char* strerror (int) ;

int create_bin_file(char *bin_filename) {
 int exitcode = 0;

 unsigned char *buffer;

 int i;
 mtd_info *mtd;
 int addsize;
 int padsize;

 char *rand_filename = "/dev/urandom";
 FILE *f_in;
 int size;

 unsigned long int csum;
 unsigned char checksum;

 FILE *f_out;


 buffer = malloc(KERNEL_CODE_OFFSET + FLASH_SIZE);
 if (!buffer) {
  exitcode = 1;
  printf("create_bin_file: can not allocate %i bytes\n", FLASH_SIZE);
 } else {

  memset(buffer, 0, KERNEL_CODE_OFFSET + FLASH_SIZE);
 }


 if (!exitcode) {
  for (i = 1; i <= 4; i++) {
   addsize = 0;
   padsize = 0;

   switch (i) {
    case 1:
     mtd = &mtd_image;
     padsize = ROOTFS_MIN_OFFSET - mtd->filesize;
     break;
    case 2:
     mtd = &mtd_kernel;
     break;
    case 3:
     mtd = &mtd_rootfs;
     addsize = mtd->filesize;
     padsize = ROOTFS_MIN_OFFSET - mtd_kernel.size - mtd->filesize;
     break;
    case 4:
     mtd = &mtd_uboot;
     addsize = mtd->filesize;
     break;
    default:
     mtd = ((void*)0);
     exitcode = 1;
     printf("create_bin_file: unknown mtd %i\n", i);
     break;
   }
   if (!mtd) {
    break;
   }
   if (!mtd->filename) {
    continue;
   }

   lprintf(DEBUG, "adding mtd %s file %s\n", mtd->name, mtd->filename);


   if (addsize) {
    buffer[KERNEL_CODE_OFFSET + mtd->offset - 16] = 0x000000FFL & ( addsize >> 24 );
    buffer[KERNEL_CODE_OFFSET + mtd->offset - 15] = 0x000000FFL & ( addsize >> 16 );
    buffer[KERNEL_CODE_OFFSET + mtd->offset - 14] = 0x000000FFL & ( addsize >> 8 );
    buffer[KERNEL_CODE_OFFSET + mtd->offset - 13] = 0x000000FFL & addsize;
   }


   f_in = fopen(mtd->filename, "rb");
   if (!f_in) {
    exitcode = errno;
    printf("input file %s: %s\n", mtd->filename, strerror(exitcode));
   } else {
    size = fread(&buffer[KERNEL_CODE_OFFSET + mtd->offset], mtd->filesize, 1, f_in);
    if (size < 1) {
     if (ferror(f_in)) {
      exitcode = ferror(f_in);
      printf("input file %s: %s\n", mtd->filename, strerror(exitcode));
     } else {
      exitcode = 1;
      printf("input file %s: smaller than before *doh*\n", mtd->filename);
     }
    }
    fclose(f_in);
   }


   if (padsize > 0) {
    addsize = padsize & 0x0000FFFF;
    padsize -= addsize;
   }
   if (padsize > 0) {
    printf("mtd %s input file %s is too small (0x%08lX), adding 0x%08X random bytes\n", mtd->name, mtd->filename, mtd->filesize, padsize);

    addsize += KERNEL_CODE_OFFSET + mtd->offset + mtd->filesize;
    lprintf(DEBUG, " padding offset 0x%08X length 0x%08X\n", addsize, padsize);

    f_in = fopen(rand_filename, "rb");
    if (!f_in) {
     exitcode = errno;
     printf("input file %s: %s\n", rand_filename, strerror(exitcode));
    } else {
     size = fread(&buffer[addsize], padsize, 1, f_in);
     if (size < 1) {
      if (ferror(f_in)) {
       exitcode = ferror(f_in);
       printf("input file %s: %s\n", rand_filename, strerror(exitcode));
      } else {
       exitcode = 1;
       printf("input file %s: smaller than before *doh*\n", rand_filename);
      }
     }
    }
    fclose(f_in);
   }
  }
 }


 if (!exitcode) {
  lprintf(DEBUG, "adding rootfs special data\n");
  memcpy(&buffer[KERNEL_CODE_OFFSET + PRODUCT_ID_OFFSET], product_id, 2);
  memcpy(&buffer[KERNEL_CODE_OFFSET + PROTOCOL_ID_OFFSET], protocol_id, 2);
  memcpy(&buffer[KERNEL_CODE_OFFSET + FW_VERSION_OFFSET], fw_version, 2);
  memcpy(&buffer[KERNEL_CODE_OFFSET + FW_VERSION_OFFSET + 2], rootfs_unknown, 2);
  memcpy(&buffer[KERNEL_CODE_OFFSET + SIGN_OFFSET], sign, 8);

  lprintf(DEBUG, "adding u-boot special data\n");



  memcpy(&buffer[KERNEL_CODE_OFFSET + BOOT_ADDR_BASE_OFF + PID_OFFSET], pid, 70);
  memcpy(&buffer[KERNEL_CODE_OFFSET + BOOT_ADDR_BASE_OFF + PID_OFFSET + 57], fw_version, 2);

  lprintf(DEBUG, "adding checksum byte\n");
  csum = 0;
  for (i = 0; i < KERNEL_CODE_OFFSET + FLASH_SIZE; i++) {
   csum += buffer[i];
  }
  lprintf(DEBUG_LVL2, " checksum 0x%016lX (%li)\n", csum, csum);

  buffer[KERNEL_CODE_OFFSET + NODE_BASE_OFF + 25] = ~csum + 1;
  lprintf(DEBUG, " byte 0x%02X\n", buffer[KERNEL_CODE_OFFSET + NODE_BASE_OFF + 25]);
 }


 if (!exitcode) {
  lprintf(DEBUG, "writing file %s\n", bin_filename);
  f_out = fopen(bin_filename, "wb");
  if (!f_out) {
   exitcode = errno;
   printf("output file %s: %s\n", bin_filename, strerror(exitcode));
  } else {
   size = fwrite(buffer, KERNEL_CODE_OFFSET + FLASH_SIZE, 1, f_out);
   if (size < 1) {
    if (ferror(f_out)) {
     exitcode = ferror(f_out);
     printf("output file %s: %s\n", bin_filename, strerror(exitcode));
    } else {
     exitcode = 1;
     printf("output file %s: unspecified write error\n", bin_filename);
    }
   }
   fclose(f_out);
  }
 }

 return exitcode;
}
