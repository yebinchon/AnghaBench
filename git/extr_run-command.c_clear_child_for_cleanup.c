
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_to_clean {scalar_t__ pid; struct child_to_clean* next; } ;
typedef scalar_t__ pid_t ;


 struct child_to_clean* children_to_clean ;
 int free (struct child_to_clean*) ;

__attribute__((used)) static void clear_child_for_cleanup(pid_t pid)
{
 struct child_to_clean **pp;

 for (pp = &children_to_clean; *pp; pp = &(*pp)->next) {
  struct child_to_clean *clean_me = *pp;

  if (clean_me->pid == pid) {
   *pp = clean_me->next;
   free(clean_me);
   return;
  }
 }
}
