
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer {int data; int (* f ) (int ) ;} ;
typedef scalar_t__ gpointer ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 int g_hash_table_remove (int ,struct timer*) ;
 int stub1 (int ) ;
 int timers ;
 int uiprivFree (struct timer*) ;

__attribute__((used)) static gboolean doTimer(gpointer data)
{
 struct timer *t = (struct timer *) data;

 if (!(*(t->f))(t->data)) {
  g_hash_table_remove(timers, t);
  uiprivFree(t);
  return FALSE;
 }
 return TRUE;
}
