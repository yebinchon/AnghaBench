
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int FILE ;


 int ERR (char*,char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SEEK_END ;
 int SEEK_SET ;
 int VERBOSE (char*,scalar_t__,...) ;
 int buffer ;
 scalar_t__ config_size ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fread (int ,int,scalar_t__,int *) ;
 int free (int ) ;
 int fseek (int *,long,int ) ;
 scalar_t__ ftell (int *) ;
 int malloc (scalar_t__) ;

__attribute__((used)) static int read_file(char *file_name)
{
 int ret = EXIT_FAILURE;
 uint32_t file_size = 0;
 FILE *fp;

 fp = fopen(file_name, "r");

 if (!fp) {
  ERR("Failed to open config input file %s", file_name);
  goto out;
 }

 fseek(fp, 0L, SEEK_END);
 file_size = ftell(fp);
 fseek(fp, 0L, SEEK_SET);

 buffer = malloc(file_size);
 VERBOSE("Allocated %d bytes.", file_size);

 if (fread(buffer, 1, file_size, fp) != file_size) {
  ERR("Failed to read config input file %s", file_name);
  goto out_free_buf;
 }

 VERBOSE("Read %d bytes of config input file %s", file_size, file_name);
 config_size = file_size;
 ret = EXIT_SUCCESS;
 goto out;

 out_free_buf:
 free(buffer);
 fclose(fp);
 out:
 return ret;
}
