
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WRITE_ONCE (int,int) ;

__attribute__((used)) static void lcd_put_byte(u8 *addr, u8 data)
{



 WRITE_ONCE(*addr, data & 0xf0);
 WRITE_ONCE(*addr, (data << 4) & 0xf0);

}
