
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TABLE_SIZE ;
 int binary_search_ranges (int ,int ,int) ;
 int* to_upper_table ;
 int to_upper_table_ranges ;
 int to_upper_table_ranges_size ;

int unicode_toupper (int code) {
  if ((unsigned int)code < (unsigned int)TABLE_SIZE) {
    return to_upper_table[code];
  } else {
    return binary_search_ranges (to_upper_table_ranges, to_upper_table_ranges_size, code);
  }
}
