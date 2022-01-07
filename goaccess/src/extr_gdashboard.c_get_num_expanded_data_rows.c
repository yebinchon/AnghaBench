
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ no_column_names; } ;


 int DASH_COL_ROWS ;
 int DASH_EXPANDED ;
 int DASH_NON_DATA ;
 TYPE_1__ conf ;

int
get_num_expanded_data_rows (void)
{

  int size = DASH_EXPANDED - DASH_NON_DATA;


  return conf.no_column_names ? size + DASH_COL_ROWS : size;
}
