
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ git_off_t ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_5__ {scalar_t__ offset; TYPE_1__ window_map; } ;
typedef TYPE_2__ git_mwindow ;



int git_mwindow_contains(git_mwindow *win, git_off_t offset)
{
 git_off_t win_off = win->offset;
 return win_off <= offset
  && offset <= (git_off_t)(win_off + win->window_map.len);
}
