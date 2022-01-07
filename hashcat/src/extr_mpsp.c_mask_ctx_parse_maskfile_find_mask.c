
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *mask_ctx_parse_maskfile_find_mask (char *line_buf, const size_t line_len)
{
  char *mask_buf = line_buf;

  bool escaped = 0;

  for (size_t i = 0; i < line_len; i++)
  {
    if (escaped == 1)
    {
      escaped = 0;
    }
    else
    {
      if (line_buf[i] == '\\')
      {
        escaped = 1;
      }
      else if (line_buf[i] == ',')
      {
        mask_buf = line_buf + i + 1;
      }
    }
  }

  return mask_buf;
}
