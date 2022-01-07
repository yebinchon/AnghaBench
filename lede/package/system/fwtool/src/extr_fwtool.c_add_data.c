
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwimage_trailer {int crc32; int magic; } ;
typedef int buf ;


 int FWIMAGE_MAGIC ;
 int add_metadata (struct fwimage_trailer*) ;
 int add_signature (struct fwimage_trailer*) ;
 int cpu_to_be32 (int ) ;
 int fflush (int ) ;
 int fileno (int ) ;
 int firmware_file ;
 int fopen (char const*,char*) ;
 int fread (char*,int,int,int ) ;
 int ftruncate (int ,int) ;
 scalar_t__ metadata_file ;
 int msg (char*) ;
 scalar_t__ signature_file ;
 int trailer_update_crc (struct fwimage_trailer*,char*,int) ;

__attribute__((used)) static int
add_data(const char *name)
{
 struct fwimage_trailer tr = {
  .magic = cpu_to_be32(FWIMAGE_MAGIC),
  .crc32 = ~0,
 };
 int file_len = 0;
 int ret = 0;

 firmware_file = fopen(name, "r+");
 if (!firmware_file) {
  msg("Failed to open firmware file\n");
  return 1;
 }

 while (1) {
  char buf[512];
  int len;

  len = fread(buf, 1, sizeof(buf), firmware_file);
  if (!len)
   break;

  file_len += len;
  trailer_update_crc(&tr, buf, len);
 }

 if (metadata_file)
  ret = add_metadata(&tr);
 else if (signature_file)
  ret = add_signature(&tr);

 if (ret) {
  fflush(firmware_file);
  ftruncate(fileno(firmware_file), file_len);
 }

 return ret;
}
