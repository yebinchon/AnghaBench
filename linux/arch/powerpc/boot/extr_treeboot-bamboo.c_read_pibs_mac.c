
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PIBS_MAC0 ;
 scalar_t__ PIBS_MAC1 ;
 int memcpy (int *,char*,int) ;
 int pibs_mac0 ;
 int pibs_mac1 ;
 unsigned long long strtoull (char*,int ,int) ;

__attribute__((used)) static void read_pibs_mac(void)
{
 unsigned long long mac64;

 mac64 = strtoull((char *)PIBS_MAC0, 0, 16);
 memcpy(&pibs_mac0, (char *)&mac64+2, 6);

 mac64 = strtoull((char *)PIBS_MAC1, 0, 16);
 memcpy(&pibs_mac1, (char *)&mac64+2, 6);
}
