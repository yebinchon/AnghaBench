
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int check; } ;
typedef TYPE_1__ CSeqCheckInStream ;
typedef int Byte ;


 int XzCheck_Final (int *,int *) ;

__attribute__((used)) static void SeqCheckInStream_GetDigest(CSeqCheckInStream *p, Byte *digest)
{
  XzCheck_Final(&p->check, digest);
}
