
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_FIND_ITEM ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

int dmlab_finditem(const char* classname, int* index) {
  return trap_DeepmindCallback(DEEPMIND_FIND_ITEM, (intptr_t)classname,
                               (intptr_t)index, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
