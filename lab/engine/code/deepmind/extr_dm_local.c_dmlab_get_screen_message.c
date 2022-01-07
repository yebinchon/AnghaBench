
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_GET_SCREEN_MESSAGE ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ) ;

void dmlab_get_screen_message(int message_id, char* buffer, int* x, int* y,
                              int* align_l0_r1_c2, int* shadow, float rgba[4]) {
  trap_DeepmindCallback(DEEPMIND_GET_SCREEN_MESSAGE, (intptr_t)message_id,
                        (intptr_t)buffer, (intptr_t)x, (intptr_t)y,
                        (intptr_t)align_l0_r1_c2, (intptr_t)shadow,
                        (intptr_t)rgba, 0, 0, 0, 0, 0);
}
