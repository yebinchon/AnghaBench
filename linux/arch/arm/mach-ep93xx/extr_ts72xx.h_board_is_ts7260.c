
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TS72XX_MODEL_TS7260 ;
 scalar_t__ ts72xx_model () ;

__attribute__((used)) static inline int board_is_ts7260(void)
{
 return ts72xx_model() == TS72XX_MODEL_TS7260;
}
