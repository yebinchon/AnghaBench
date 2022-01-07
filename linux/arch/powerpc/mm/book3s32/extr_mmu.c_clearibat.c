
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_bat {scalar_t__ batl; scalar_t__ batu; } ;


 struct ppc_bat** BATS ;

__attribute__((used)) static void clearibat(int index)
{
 struct ppc_bat *bat = BATS[index];

 bat[0].batu = 0;
 bat[0].batl = 0;
}
