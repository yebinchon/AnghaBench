
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int (* Start ) (TYPE_5__*,int,int ,int ,int ) ;} ;
struct TYPE_9__ {TYPE_5__ tempo; int pUsart; } ;
struct TYPE_8__ {TYPE_1__* pBuffer; } ;
struct TYPE_7__ {scalar_t__ szRdBuffer; } ;
struct TYPE_6__ {int pChild; } ;
typedef int AT91S_PipeStatus ;
typedef int AT91PS_USART ;
typedef TYPE_2__* AT91PS_SBuffer ;


 int AT91_XmodemComplete ;
 int stub1 (TYPE_5__*,int,int ,int ,int ) ;
 TYPE_4__ svcXmodem ;
 TYPE_3__ xmodemPipe ;

__attribute__((used)) static void XmodemProtocol(AT91S_PipeStatus status, void *pVoid)
{
 AT91PS_SBuffer pSBuffer = (AT91PS_SBuffer) xmodemPipe.pBuffer->pChild;
 AT91PS_USART pUsart = svcXmodem.pUsart;

 if (pSBuffer->szRdBuffer == 0) {

  svcXmodem.tempo.Start(&(svcXmodem.tempo), 10, 0, AT91_XmodemComplete, pUsart);
 }
}
