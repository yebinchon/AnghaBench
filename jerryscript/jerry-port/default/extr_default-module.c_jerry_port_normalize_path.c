
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_JERRY_PATH_SIZE ;
 int PATH_MAX ;
 int _MAX_DIR ;
 int _MAX_DRIVE ;
 int _MAX_PATH ;
 char* _fullpath (char*,char*,size_t) ;
 int _splitpath_s (char*,char**,int,char*,int,int *,int ,int *,int ) ;
 char* dirname (char*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 char* realpath (char*,char*) ;
 int strncat (char*,...) ;
 int strncpy (char*,char const*,size_t) ;
 void* strnlen (char const*,size_t) ;

size_t
jerry_port_normalize_path (const char *in_path_p,
                           char *out_buf_p,
                           size_t out_buf_size,
                           char *base_file_p)
{
  size_t ret = 0;
  char *buffer_p = (char *) malloc (PATH_MAX);
  char *path_p = (char *) malloc (PATH_MAX);

  char *base_p = dirname (base_file_p);
  strncpy (path_p, base_p, 256);
  strncat (path_p, "/", 1);
  strncat (path_p, in_path_p, 256);

  char *norm_p = realpath (path_p, buffer_p);
  free (path_p);

  if (norm_p != ((void*)0))
  {
    const size_t len = strnlen (norm_p, out_buf_size);
    if (len < out_buf_size)
    {
      strncpy (out_buf_p, norm_p, out_buf_size);
      ret = len;
    }
  }

  free (buffer_p);
  return ret;
}
