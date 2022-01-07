
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int JERRY_LOG_LEVEL_ERROR ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (int *,unsigned int,size_t,int *) ;
 int free (int *) ;
 size_t jerry_port_get_file_size (int *) ;
 int jerry_port_log (int ,char*,...) ;
 scalar_t__ malloc (size_t) ;

uint8_t *
jerry_port_read_source (const char *file_name_p,
                        size_t *out_size_p)
{
  FILE *file_p = fopen (file_name_p, "rb");

  if (file_p == ((void*)0))
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Error: failed to open file: %s\n", file_name_p);
    return ((void*)0);
  }

  size_t file_size = jerry_port_get_file_size (file_p);
  uint8_t *buffer_p = (uint8_t *) malloc (file_size);

  if (buffer_p == ((void*)0))
  {
    fclose (file_p);

    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Error: failed to allocate memory for module");
    return ((void*)0);
  }

  size_t bytes_read = fread (buffer_p, 1u, file_size, file_p);

  if (!bytes_read)
  {
    fclose (file_p);
    free (buffer_p);

    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Error: failed to read file: %s\n", file_name_p);
    return ((void*)0);
  }

  fclose (file_p);
  *out_size_p = bytes_read;

  return buffer_p;
}
