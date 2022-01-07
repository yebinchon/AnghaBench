
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_digit (char) ;
 scalar_t__ is_letter (char) ;

int is_ident_char (char c) {
  return is_digit (c) || is_letter (c) || c == '_';
}
