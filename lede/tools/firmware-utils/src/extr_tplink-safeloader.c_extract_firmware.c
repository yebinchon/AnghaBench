
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct flash_partition_entry {scalar_t__ base; scalar_t__ size; int * name; } ;
typedef int FILE ;


 int S_IFDIR ;
 int S_IFMT ;
 int errno ;
 int error (int,int ,char*,...) ;
 int extract_firmware_partition (int *,size_t,struct flash_partition_entry*,char const*) ;
 int * fopen (char const*,char*) ;
 scalar_t__ read_partition_table (int *,size_t,struct flash_partition_entry*,int,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int extract_firmware(const char *input, const char *output_directory)
{
 struct flash_partition_entry entries[16] = { 0 };
 size_t max_entries = 16;
 size_t firmware_offset = 0x1014;
 FILE *input_file;

 struct stat statbuf;


 if (stat(input, &statbuf)) {
  error(1, errno, "Can not read input firmware %s", input);
 }


 if (stat(output_directory, &statbuf)) {
  error(1, errno, "Failed to stat output directory %s", output_directory);
 }

 if ((statbuf.st_mode & S_IFMT) != S_IFDIR) {
  error(1, errno, "Given output directory is not a directory %s", output_directory);
 }

 input_file = fopen(input, "rb");

 if (read_partition_table(input_file, firmware_offset, entries, 16, 0) != 0) {
  error(1, 0, "Error can not read the partition table (fwup-ptn)");
 }

 for (int i = 0; i < max_entries; i++) {
  if (entries[i].name == ((void*)0) &&
    entries[i].base == 0 &&
    entries[i].size == 0)
   continue;

  extract_firmware_partition(input_file, firmware_offset, &entries[i], output_directory);
 }

 return 0;
}
