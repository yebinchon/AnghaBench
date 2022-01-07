
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiModifiers ;
typedef int guint ;


 int GDK_CONTROL_MASK ;
 int GDK_META_MASK ;
 int GDK_MOD1_MASK ;
 int GDK_SHIFT_MASK ;
 int GDK_SUPER_MASK ;
 int uiModifierAlt ;
 int uiModifierCtrl ;
 int uiModifierShift ;
 int uiModifierSuper ;

__attribute__((used)) static uiModifiers toModifiers(guint state)
{
 uiModifiers m;

 m = 0;
 if ((state & GDK_CONTROL_MASK) != 0)
  m |= uiModifierCtrl;
 if ((state & GDK_META_MASK) != 0)
  m |= uiModifierAlt;
 if ((state & GDK_MOD1_MASK) != 0)
  m |= uiModifierAlt;
 if ((state & GDK_SHIFT_MASK) != 0)
  m |= uiModifierShift;
 if ((state & GDK_SUPER_MASK) != 0)
  m |= uiModifierSuper;
 return m;
}
