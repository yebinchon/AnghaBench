
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aoecmd_cfg (int,int) ;

__attribute__((used)) static int
discover(void)
{
 aoecmd_cfg(0xffff, 0xff);
 return 0;
}
