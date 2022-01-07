
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_write_pos () ;
 int writeout_char (int ) ;

__attribute__((used)) static inline void writeout_align (int align) {
  int k = -get_write_pos() & (align - 1);
  while (k > 0) {
    writeout_char (0);
    k--;
  }
}
