
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TABLE_SIZE ;
 int binary_search_ranges (int ,int ,int) ;
 int* to_lower_table ;
 int to_lower_table_ranges ;
 int to_lower_table_ranges_size ;

int unicode_tolower (int code) {
  if ((unsigned int)code < (unsigned int)TABLE_SIZE) {
    return to_lower_table[code];
  } else {
    return binary_search_ranges (to_lower_table_ranges, to_lower_table_ranges_size, code);
  }
}
