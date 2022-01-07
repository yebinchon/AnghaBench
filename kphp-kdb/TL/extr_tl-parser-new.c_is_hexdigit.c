
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_digit (char) ;

int is_hexdigit (char c) {
  return is_digit (c) || (c >= 'a' && c <= 'f');
}
