
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFFSIZE ;
 int * Buff ;
 int assert (int *) ;
 int idx_crc32c_complement ;
 int * malloc (int) ;
 int * rptr ;
 int * wptr ;

__attribute__((used)) static void clearin (void) {
  if (Buff == ((void*)0)) {
    Buff = malloc (BUFFSIZE);
    assert (Buff);
  }
  rptr = wptr = Buff + BUFFSIZE;
  idx_crc32c_complement = -1;
}
