
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pptr; int unprocessed_bytes; int total_bytes; scalar_t__ wptr; scalar_t__ rptr; struct TYPE_3__* next; struct TYPE_3__* prev; } ;
typedef TYPE_1__ netbuffer_t ;


 int assert (int) ;
 unsigned int crc32_partial (int,int,unsigned int) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;

unsigned count_crc32_back_partial (netbuffer_t *H, int len, unsigned complement_crc32) {
  netbuffer_t *X = H->prev;
  int total_bytes = X->pptr ? H->unprocessed_bytes : H->total_bytes;
  if (len > total_bytes) {
    fprintf (stderr, "**ERROR** len=%d total_bytes=%d\n", len, total_bytes);
  }
  assert (len <= total_bytes);

  if (X->wptr == X->rptr && X != H) {
    X = X->prev;
  }

  while (len > 0) {
    int s = X->wptr - (X->pptr ? X->pptr : X->rptr);
    len -= s;
    if (len > 0) {
      X = X->prev;
    }
  }
  complement_crc32 = crc32_partial ((X->pptr ? X->pptr : X->rptr) - len, X->wptr - (X->pptr ? X->pptr : X->rptr) + len, complement_crc32);
  X = X->next;
  while (X != H) {
    complement_crc32 = crc32_partial ((X->pptr ? X->pptr : X->rptr), X->wptr - (X->pptr ? X->pptr : X->rptr), complement_crc32);
    X = X->next;
  }
  return complement_crc32;
}
