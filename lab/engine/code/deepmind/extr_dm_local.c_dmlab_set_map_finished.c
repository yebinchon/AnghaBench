
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_FINISH_MAP ;
 int trap_DeepmindCallback (int ,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void dmlab_set_map_finished(int map_finished) {
  trap_DeepmindCallback(DEEPMIND_FINISH_MAP, (intptr_t)map_finished,
                        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
