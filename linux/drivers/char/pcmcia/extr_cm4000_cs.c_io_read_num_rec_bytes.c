
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_FLAGS0 (unsigned int) ;
 int REG_NUM_BYTES (unsigned int) ;
 int inb (int ) ;

__attribute__((used)) static unsigned short io_read_num_rec_bytes(unsigned int iobase,
         unsigned short *s)
{
 unsigned short tmp;

 tmp = *s = 0;
 do {
  *s = tmp;
  tmp = inb(REG_NUM_BYTES(iobase)) |
    (inb(REG_FLAGS0(iobase)) & 4 ? 0x100 : 0);
 } while (tmp != *s);

 return *s;
}
