
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_ST_CRTR ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_st ;

__attribute__((used)) static inline unsigned long read_CRTR(void)
{
 unsigned int x1, x2;

 regmap_read(regmap_st, AT91_ST_CRTR, &x1);
 do {
  regmap_read(regmap_st, AT91_ST_CRTR, &x2);
  if (x1 == x2)
   break;
  x1 = x2;
 } while (1);
 return x1;
}
