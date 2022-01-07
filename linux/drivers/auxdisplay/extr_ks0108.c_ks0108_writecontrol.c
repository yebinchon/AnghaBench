
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char bit (int) ;
 int ks0108_delay ;
 int ks0108_parport ;
 int parport_write_control (int ,unsigned char) ;
 int udelay (int ) ;

void ks0108_writecontrol(unsigned char byte)
{
 udelay(ks0108_delay);
 parport_write_control(ks0108_parport, byte ^ (bit(0) | bit(1) | bit(3)));
}
