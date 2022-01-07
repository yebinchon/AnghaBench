
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OFS_RCV_BUFFER ;
 int UART16550_READ (int ) ;
 int serial_tstc () ;

int serial_getc(void)
{
    while(!serial_tstc());

    return UART16550_READ(OFS_RCV_BUFFER);
}
