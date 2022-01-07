
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1550_spi_info {int dummy; } ;


 int BCSR_BOARD ;
 int BCSR_BOARD_SPISEL ;
 int bcsr_mod (int ,int ,int ) ;

__attribute__((used)) static void db1550_spi_cs_en(struct au1550_spi_info *spi, int cs, int pol)
{
 if (cs)
  bcsr_mod(BCSR_BOARD, 0, BCSR_BOARD_SPISEL);
 else
  bcsr_mod(BCSR_BOARD, BCSR_BOARD_SPISEL, 0);
}
