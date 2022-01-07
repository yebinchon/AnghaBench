
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ackcount; size_t ackblock; int * acklist; } ;
typedef TYPE_1__ ikcpcb ;
typedef int IUINT32 ;


 int abort () ;
 int assert (int ) ;
 int ikcp_free (int *) ;
 scalar_t__ ikcp_malloc (size_t) ;

__attribute__((used)) static void ikcp_ack_push(ikcpcb *kcp, IUINT32 sn, IUINT32 ts)
{
 size_t newsize = kcp->ackcount + 1;
 IUINT32 *ptr;

 if (newsize > kcp->ackblock) {
  IUINT32 *acklist;
  size_t newblock;

  for (newblock = 8; newblock < newsize; newblock <<= 1);
  acklist = (IUINT32*)ikcp_malloc(newblock * sizeof(IUINT32) * 2);

  if (acklist == ((void*)0)) {
   assert(acklist != ((void*)0));
   abort();
  }

  if (kcp->acklist != ((void*)0)) {
   size_t x;
   for (x = 0; x < kcp->ackcount; x++) {
    acklist[x * 2 + 0] = kcp->acklist[x * 2 + 0];
    acklist[x * 2 + 1] = kcp->acklist[x * 2 + 1];
   }
   ikcp_free(kcp->acklist);
  }

  kcp->acklist = acklist;
  kcp->ackblock = newblock;
 }

 ptr = &kcp->acklist[kcp->ackcount * 2];
 ptr[0] = sn;
 ptr[1] = ts;
 kcp->ackcount++;
}
