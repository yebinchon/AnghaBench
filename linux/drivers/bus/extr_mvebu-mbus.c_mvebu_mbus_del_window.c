
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int mbus_state ;
 int mvebu_mbus_disable_window (int *,int) ;
 int mvebu_mbus_find_window (int *,int ,size_t) ;

int mvebu_mbus_del_window(phys_addr_t base, size_t size)
{
 int win;

 win = mvebu_mbus_find_window(&mbus_state, base, size);
 if (win < 0)
  return win;

 mvebu_mbus_disable_window(&mbus_state, win);
 return 0;
}
