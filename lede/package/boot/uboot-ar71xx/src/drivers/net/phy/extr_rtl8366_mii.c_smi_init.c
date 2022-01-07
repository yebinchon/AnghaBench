
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MII_SCKINPUT ;
 int MII_SDAINPUT ;
 int MII_SETSCK (int) ;
 int MII_SETSDA (int) ;
 int udelay (int) ;

__attribute__((used)) static void smi_init(void)
{
    MII_SDAINPUT;
    MII_SCKINPUT;

 MII_SETSDA(1);
 MII_SETSCK(1);

    udelay(20);
}
