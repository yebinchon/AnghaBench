
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flash_partition_entry {char* name; } ;
typedef int FILE ;


 int PATH_MAX ;
 int errno ;
 int error (int,int ,char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int write_partition (int *,size_t,struct flash_partition_entry*,int *) ;

__attribute__((used)) static int extract_firmware_partition(FILE *input_file, size_t firmware_offset, struct flash_partition_entry *entry, const char *output_directory)
{
 FILE *output_file;
 char output[PATH_MAX];

 snprintf(output, PATH_MAX, "%s/%s", output_directory, entry->name);
 output_file = fopen(output, "wb+");
 if (output_file == ((void*)0)) {
  error(1, errno, "Can not open output file %s", output);
 }

 write_partition(input_file, firmware_offset, entry, output_file);

 fclose(output_file);

 return 0;
}
