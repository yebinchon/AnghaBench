
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_window {int inuse_cnt; } ;



void unuse_pack(struct pack_window **w_cursor)
{
 struct pack_window *w = *w_cursor;
 if (w) {
  w->inuse_cnt--;
  *w_cursor = ((void*)0);
 }
}
