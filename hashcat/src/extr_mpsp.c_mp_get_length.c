
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int const OPTS_TYPE_PT_HEX ;
 size_t strlen (char const*) ;

u32 mp_get_length (const char *mask, const u32 opts_type)
{
  bool ignore_next = 0;

  u32 len = 0;

  const size_t mask_len = strlen (mask);

  for (size_t i = 0; i < mask_len; i++)
  {
    if (ignore_next == 1)
    {
      ignore_next = 0;
    }
    else
    {
      if (mask[i] == '?')
      {
        ignore_next = 1;
      }

      if (opts_type & OPTS_TYPE_PT_HEX)
      {
        ignore_next = 1;
      }

      len++;
    }
  }

  return len;
}
