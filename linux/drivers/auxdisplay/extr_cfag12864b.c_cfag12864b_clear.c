
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CFAG12864B_ADDRESSES ;
 unsigned char CFAG12864B_PAGES ;
 int cfag12864b_address (int ) ;
 int cfag12864b_page (unsigned char) ;
 int cfag12864b_setcontrollers (int,int) ;
 int cfag12864b_writebyte (int ) ;

__attribute__((used)) static void cfag12864b_clear(void)
{
 unsigned char i, j;

 cfag12864b_setcontrollers(1, 1);
 for (i = 0; i < CFAG12864B_PAGES; i++) {
  cfag12864b_page(i);
  cfag12864b_address(0);
  for (j = 0; j < CFAG12864B_ADDRESSES; j++)
   cfag12864b_writebyte(0);
 }
}
