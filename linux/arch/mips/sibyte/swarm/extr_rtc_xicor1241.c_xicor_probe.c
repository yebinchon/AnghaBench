
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X1241REG_SC ;
 int xicor_read (int ) ;

int xicor_probe(void)
{
 return xicor_read(X1241REG_SC) != -1;
}
