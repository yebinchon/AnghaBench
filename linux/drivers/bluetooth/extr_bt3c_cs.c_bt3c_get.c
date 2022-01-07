
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATA_H ;
 scalar_t__ DATA_L ;
 int inb (scalar_t__) ;

__attribute__((used)) static inline unsigned short bt3c_get(unsigned int iobase)
{
 unsigned short value = inb(iobase + DATA_L);

 value |= inb(iobase + DATA_H) << 8;

 return value;
}
