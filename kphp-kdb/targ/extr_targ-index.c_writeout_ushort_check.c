
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int likely (int) ;
 int writeout_short (int) ;

__attribute__((used)) static inline void writeout_ushort_check (int value) {
  assert (likely ((unsigned) value < 0x10000));
  writeout_short (value);
}
