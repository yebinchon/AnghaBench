
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ dec; } ;
struct TYPE_6__ {TYPE_2__ Decoder; } ;
typedef TYPE_3__ iheap_en_t ;



__attribute__((used)) static int cmp_iheap_entries (const void *a, const void *b) {
  const iheap_en_t *A = (const iheap_en_t *) a;
  const iheap_en_t *B = (const iheap_en_t *) b;
  int na = A->Decoder.dec.len;
  int nb = B->Decoder.dec.len;
  if (na < nb) { return -1; }
  if (na > nb) { return 1; }
  return 0;
}
