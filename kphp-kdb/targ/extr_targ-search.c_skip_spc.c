
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Qs ;

__attribute__((used)) static inline int skip_spc (void) {
  while (*Qs == ' ' || *Qs == 9) { Qs++; }
  return (unsigned char) *Qs;
}
