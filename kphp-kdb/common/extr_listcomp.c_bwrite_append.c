
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitwriter {unsigned char* ptr; unsigned char* end_ptr; } ;


 int assert (int) ;

__attribute__((used)) static inline void bwrite_append (struct bitwriter *bw, unsigned char value) {
  bw->ptr++;
  assert (bw->ptr < bw->end_ptr);
  *bw->ptr = value;
}
