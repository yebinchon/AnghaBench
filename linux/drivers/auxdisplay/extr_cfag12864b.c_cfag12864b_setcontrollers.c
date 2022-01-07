
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfag12864b_cs1 (int) ;
 int cfag12864b_cs2 (int) ;

__attribute__((used)) static void cfag12864b_setcontrollers(unsigned char first,
 unsigned char second)
{
 if (first)
  cfag12864b_cs1(0);
 else
  cfag12864b_cs1(1);

 if (second)
  cfag12864b_cs2(0);
 else
  cfag12864b_cs2(1);
}
