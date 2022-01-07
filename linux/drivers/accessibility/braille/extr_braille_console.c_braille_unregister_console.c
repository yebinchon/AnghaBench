
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int flags; } ;


 int CON_BRL ;
 int EINVAL ;
 struct console* braille_co ;
 int keyboard_notifier_block ;
 int unregister_keyboard_notifier (int *) ;
 int unregister_vt_notifier (int *) ;
 int vt_notifier_block ;

int braille_unregister_console(struct console *console)
{
 if (braille_co != console)
  return -EINVAL;
 if (!(console->flags & CON_BRL))
  return 0;
 unregister_keyboard_notifier(&keyboard_notifier_block);
 unregister_vt_notifier(&vt_notifier_block);
 braille_co = ((void*)0);
 return 1;
}
