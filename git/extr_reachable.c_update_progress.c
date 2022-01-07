
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectivity_progress {int count; int progress; } ;


 int display_progress (int ,int) ;

__attribute__((used)) static void update_progress(struct connectivity_progress *cp)
{
 cp->count++;
 if ((cp->count & 1023) == 0)
  display_progress(cp->progress, cp->count);
}
