
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* parse_ptr ;

__attribute__((used)) static inline void skipspc (void) {
  while (*parse_ptr == ' ' || *parse_ptr == 9 || *parse_ptr == 10 || *parse_ptr == 13) {
    parse_ptr++;
  }
}
