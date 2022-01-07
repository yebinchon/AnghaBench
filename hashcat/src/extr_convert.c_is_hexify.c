
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 int is_valid_hex_string (char const*,size_t const) ;

bool is_hexify (const u8 *buf, const size_t len)
{
  if (len < 6) return 0;





  if ((len & 1) == 1) return 0;

  if (buf[0] != '$') return (0);
  if (buf[1] != 'H') return (0);
  if (buf[2] != 'E') return (0);
  if (buf[3] != 'X') return (0);
  if (buf[4] != '[') return (0);
  if (buf[len - 1] != ']') return (0);

  if (is_valid_hex_string (buf + 5, len - 6) == 0) return 0;

  return 1;
}
