
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_BOARD ;
 int BCSR_BOARD_LCDBL ;
 int BCSR_BOARD_LCDVDD ;
 int BCSR_BOARD_LCDVEE ;
 int bcsr_mod (int ,int ,int) ;

__attribute__((used)) static int db1200fb_panel_init(void)
{

 bcsr_mod(BCSR_BOARD, 0, BCSR_BOARD_LCDVEE | BCSR_BOARD_LCDVDD |
    BCSR_BOARD_LCDBL);
 return 0;
}
