
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_MAKE_FILLED_RECTANGLES ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

int dmlab_make_filled_rectangles(int screen_width, int screen_height) {
  return trap_DeepmindCallback(DEEPMIND_MAKE_FILLED_RECTANGLES,
                               (intptr_t)screen_width, (intptr_t)screen_height,
                               0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
