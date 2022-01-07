
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRT_delay ;
 int halfdelay (int ) ;

void CRT_enableDelay() {
   halfdelay(CRT_delay);
}
