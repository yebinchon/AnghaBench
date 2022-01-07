
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int OFS_LINE_STATUS ;
 int OFS_RCV_BUFFER ;
 int UART16550_READ (int ) ;

uint8 Uart16550GetPoll()
{
    while((UART16550_READ(OFS_LINE_STATUS) & 0x1) == 0);
    return UART16550_READ(OFS_RCV_BUFFER);
}
