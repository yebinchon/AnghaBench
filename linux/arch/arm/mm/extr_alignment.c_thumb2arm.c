
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 unsigned long BAD_INSTR ;

__attribute__((used)) static unsigned long
thumb2arm(u16 tinstr)
{
 u32 L = (tinstr & (1<<11)) >> 11;

 switch ((tinstr & 0xf800) >> 11) {

 case 0x6000 >> 11:
 case 0x6800 >> 11:
 case 0x7000 >> 11:
 case 0x7800 >> 11:
  return 0xe5800000 |
   ((tinstr & (1<<12)) << (22-12)) |
   (L<<20) |
   ((tinstr & (7<<0)) << (12-0)) |
   ((tinstr & (7<<3)) << (16-3)) |
   ((tinstr & (31<<6)) >>
    (6 - ((tinstr & (1<<12)) ? 0 : 2)));
 case 0x8000 >> 11:
 case 0x8800 >> 11:
  return 0xe1c000b0 |
   (L<<20) |
   ((tinstr & (7<<0)) << (12-0)) |
   ((tinstr & (7<<3)) << (16-3)) |
   ((tinstr & (7<<6)) >> (6-1)) |
   ((tinstr & (3<<9)) >> (9-8));


 case 0x5000 >> 11:
 case 0x5800 >> 11:
  {
   static const u32 subset[8] = {
    0xe7800000,
    0xe18000b0,
    0xe7c00000,
    0xe19000d0,
    0xe7900000,
    0xe19000b0,
    0xe7d00000,
    0xe19000f0
   };
   return subset[(tinstr & (7<<9)) >> 9] |
       ((tinstr & (7<<0)) << (12-0)) |
       ((tinstr & (7<<3)) << (16-3)) |
       ((tinstr & (7<<6)) >> (6-0));
  }


 case 0x4800 >> 11:





  return 0xe59f0000 |
      ((tinstr & (7<<8)) << (12-8)) |
      ((tinstr & 255) << (2-0));


 case 0x9000 >> 11:
 case 0x9800 >> 11:
  return 0xe58d0000 |
   (L<<20) |
   ((tinstr & (7<<8)) << (12-8)) |
   ((tinstr & 255) << 2);


 case 0xc000 >> 11:
 case 0xc800 >> 11:
  {
   u32 Rn = (tinstr & (7<<8)) >> 8;
   u32 W = ((L<<Rn) & (tinstr&255)) ? 0 : 1<<21;

   return 0xe8800000 | W | (L<<20) | (Rn<<16) |
    (tinstr&255);
  }


 case 0xb000 >> 11:
 case 0xb800 >> 11:
  if ((tinstr & (3 << 9)) == 0x0400) {
   static const u32 subset[4] = {
    0xe92d0000,
    0xe92d4000,
    0xe8bd0000,
    0xe8bd8000
   };
   return subset[(L<<1) | ((tinstr & (1<<8)) >> 8)] |
       (tinstr & 255);
  }


 default:
  return BAD_INSTR;
 }
}
