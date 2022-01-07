
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int JERRY_LOG_LEVEL_ERROR ;
 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (int *,unsigned int,long,int *) ;
 int free (void*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int jerry_port_log (int ,char*,...) ;
 scalar_t__ malloc (long) ;
 int rewind (int *) ;

__attribute__((used)) static const uint8_t *
read_file (const char *file_name,
           size_t *out_size_p)
{
  FILE *file = fopen (file_name, "r");
  if (file == ((void*)0))
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Error: cannot open file: %s\n", file_name);
    return ((void*)0);
  }

  int fseek_status = fseek (file, 0, SEEK_END);
  if (fseek_status != 0)
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Failed to seek (error: %d)\n", fseek_status);
    fclose (file);
    return ((void*)0);
  }

  long script_len = ftell (file);
  if (script_len < 0)
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Failed to get the file size(error %ld)\n", script_len);
    fclose (file);
    return ((void*)0);
  }

  rewind (file);

  uint8_t *buffer = (uint8_t *) malloc (script_len);

  if (buffer == ((void*)0))
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Out of memory error\n");
    fclose (file);
    return ((void*)0);
  }

  size_t bytes_read = fread (buffer, 1u, script_len, file);

  if (!bytes_read || bytes_read != script_len)
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Error: failed to read file: %s\n", file_name);
    free ((void*) buffer);

    fclose (file);
    return ((void*)0);
  }

  fclose (file);

  *out_size_p = bytes_read;
  return (const uint8_t *) buffer;
}
