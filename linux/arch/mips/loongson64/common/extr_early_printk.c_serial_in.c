
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORT (unsigned char*,int) ;
 unsigned int readb (int ) ;

__attribute__((used)) static inline unsigned int serial_in(unsigned char *base, int offset)
{
 return readb(PORT(base, offset));
}
