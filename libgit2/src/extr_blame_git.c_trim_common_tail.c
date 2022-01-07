
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; int size; } ;
typedef TYPE_1__ mmfile_t ;


 int memcmp (char*,char*,int const) ;

__attribute__((used)) static void trim_common_tail(mmfile_t *a, mmfile_t *b, long ctx)
{
 const int blk = 1024;
 long trimmed = 0, recovered = 0;
 char *ap = a->ptr + a->size;
 char *bp = b->ptr + b->size;
 long smaller = (long)((a->size < b->size) ? a->size : b->size);

 if (ctx)
  return;

 while (blk + trimmed <= smaller && !memcmp(ap - blk, bp - blk, blk)) {
  trimmed += blk;
  ap -= blk;
  bp -= blk;
 }

 while (recovered < trimmed)
  if (ap[recovered++] == '\n')
   break;
 a->size -= trimmed - recovered;
 b->size -= trimmed - recovered;
}
