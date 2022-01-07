
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int max_header_size ;

void
http_parser_set_max_header_size(uint32_t size) {
  max_header_size = size;
}
