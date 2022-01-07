
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int OFS_LINE_STATUS ;
 int OFS_SEND_BUFFER ;
 int UART16550_READ (int ) ;
 int UART16550_WRITE (int ,int ) ;

void Uart16550Put(uint8 byte)
{
    while ((UART16550_READ(OFS_LINE_STATUS) &0x20) == 0);
    UART16550_WRITE(OFS_SEND_BUFFER, byte);
}
