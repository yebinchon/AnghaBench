
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_lletter (char) ;
 scalar_t__ is_uletter (char) ;

int is_letter (char c) {
  return is_uletter (c) || is_lletter (c);
}
