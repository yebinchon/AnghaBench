
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_MAKE_SCREEN_MESSAGES ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ) ;

int dmlab_make_screen_messages(int screen_width, int screen_height,
                               int line_height, int string_buffer_size) {
  return trap_DeepmindCallback(DEEPMIND_MAKE_SCREEN_MESSAGES,
                               (intptr_t)screen_width, (intptr_t)screen_height,
                               (intptr_t)line_height,
                               (intptr_t)string_buffer_size, 0, 0, 0, 0, 0, 0,
                               0, 0);
}
