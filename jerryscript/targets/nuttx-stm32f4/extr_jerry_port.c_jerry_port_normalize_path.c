
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

size_t
jerry_port_normalize_path (const char *in_path_p,
                           char *out_buf_p,
                           size_t out_buf_size,
                           char *base_file_p)
{
  (void) base_file_p;

  size_t len = strlen (in_path_p);
  if (len + 1 > out_buf_size)
  {
    return 0;
  }


  strcpy (out_buf_p, in_path_p);
  return len;
}
