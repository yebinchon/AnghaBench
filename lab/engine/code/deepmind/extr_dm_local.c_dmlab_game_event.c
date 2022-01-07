
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_GAME_EVENT ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void dmlab_game_event(const char* event_name, int count, const float vals[]) {
  trap_DeepmindCallback(DEEPMIND_GAME_EVENT, (intptr_t)event_name,
                        (intptr_t)count, (intptr_t)vals, 0, 0, 0, 0, 0, 0, 0, 0,
                        0);
}
