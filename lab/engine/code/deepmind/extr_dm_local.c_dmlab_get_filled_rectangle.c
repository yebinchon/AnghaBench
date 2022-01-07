
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_GET_FILLED_RECTANGLE ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ) ;

void dmlab_get_filled_rectangle(int rectangle_id, int* x, int* y, int* width,
                                int* height, float rgba[4]) {
  trap_DeepmindCallback(DEEPMIND_GET_FILLED_RECTANGLE, (intptr_t)rectangle_id,
                        (intptr_t)x, (intptr_t)y, (intptr_t)width,
                        (intptr_t)height, (intptr_t)rgba, 0, 0, 0, 0, 0, 0);
}
