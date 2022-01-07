
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;


 int ida_free (struct ida*,int) ;

__attribute__((used)) static void vas_release_window_id(struct ida *ida, int winid)
{
 ida_free(ida, winid);
}
