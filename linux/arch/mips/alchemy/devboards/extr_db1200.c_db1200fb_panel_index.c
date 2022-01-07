
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_SWITCHES ;
 int bcsr_read (int ) ;

__attribute__((used)) static int db1200fb_panel_index(void)
{
 return (bcsr_read(BCSR_SWITCHES) >> 8) & 0x0f;
}
