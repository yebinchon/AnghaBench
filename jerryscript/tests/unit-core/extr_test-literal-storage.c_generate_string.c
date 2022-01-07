
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t lit_utf8_size_t ;
typedef char lit_utf8_byte_t ;
typedef int bytes ;


 scalar_t__ rand () ;

__attribute__((used)) static void
generate_string (lit_utf8_byte_t *str, lit_utf8_size_t len)
{
  static const lit_utf8_byte_t bytes[] = "!@#$%^&*()_+abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
  static const lit_utf8_size_t length = (lit_utf8_size_t) (sizeof (bytes) - 1);
  for (lit_utf8_size_t i = 0; i < len; ++i)
  {
    str[i] = bytes[(unsigned long) rand () % length];
  }
}
