
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ no_column_names; } ;


 int DASH_COL_ROWS ;
 int DASH_DATA_POS ;
 TYPE_1__ conf ;

__attribute__((used)) static int
get_data_pos_rows (void)
{
  return conf.no_column_names ? DASH_DATA_POS - DASH_COL_ROWS : DASH_DATA_POS;
}
