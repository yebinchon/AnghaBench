
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tosh_fn ;
 int tosh_id ;

__attribute__((used)) static void tosh_set_fn_port(void)
{
 switch (tosh_id) {
  case 0xfc02: case 0xfc04: case 0xfc09: case 0xfc0a: case 0xfc10:
  case 0xfc11: case 0xfc13: case 0xfc15: case 0xfc1a: case 0xfc1b:
  case 0xfc5a:
   tosh_fn = 0x62;
   break;
  case 0xfc08: case 0xfc17: case 0xfc1d: case 0xfcd1: case 0xfce0:
  case 0xfce2:
   tosh_fn = 0x68;
   break;
  default:
   tosh_fn = 0x00;
   break;
 }

 return;
}
