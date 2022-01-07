
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* is_letter ;
 int* is_letter_utf8 ;

__attribute__((used)) static inline void declare_special (int c) {
  is_letter[c] |= 0x80;
  is_letter_utf8[c] |= 0x80;
}
