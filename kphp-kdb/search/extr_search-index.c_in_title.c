
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freqs; } ;
typedef TYPE_1__ pair_t ;



__attribute__((used)) static inline int in_title (pair_t *P) {
  return (P->freqs >= 0x10000);
}
