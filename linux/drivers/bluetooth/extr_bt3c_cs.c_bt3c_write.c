
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int bt3c_address (unsigned int,int) ;
 int bt3c_io_write (unsigned int,int,int) ;
 int bt3c_put (unsigned int,int ) ;

__attribute__((used)) static int bt3c_write(unsigned int iobase, int fifo_size, __u8 *buf, int len)
{
 int actual = 0;

 bt3c_address(iobase, 0x7080);


 while (actual < len) {

  bt3c_put(iobase, buf[actual]);
  actual++;
 }

 bt3c_io_write(iobase, 0x7005, actual);

 return actual;
}
