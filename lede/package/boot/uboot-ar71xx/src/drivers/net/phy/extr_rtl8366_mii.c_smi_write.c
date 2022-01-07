
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int smi_start () ;
 int smi_stop () ;
 scalar_t__ smi_waitAck () ;
 int smi_writeBits (int,int) ;

__attribute__((used)) static int smi_write(uint32_t reg, uint32_t data)
{

    smi_start();

    smi_writeBits(0x0a, 4);

    smi_writeBits(0x04, 3);

    smi_writeBits(0x00, 1);


    if (smi_waitAck())
        return -1;


    smi_writeBits(reg & 0xFF, 8);

    if (smi_waitAck())
        return -1;

    smi_writeBits((reg & 0xFF00) >> 8, 8);

    if (smi_waitAck())
        return -1;


    smi_writeBits(data & 0xFF, 8);

    if (smi_waitAck())
        return -1;

    smi_writeBits((data & 0xFF00) >> 8, 8);

    if (smi_waitAck())
        return -1;


    smi_stop();

    return 0;
}
