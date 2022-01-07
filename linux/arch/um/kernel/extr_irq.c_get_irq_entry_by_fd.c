
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_entry {int fd; struct irq_entry* next; } ;


 struct irq_entry* active_fds ;

__attribute__((used)) static struct irq_entry *get_irq_entry_by_fd(int fd)
{
 struct irq_entry *walk = active_fds;

 while (walk != ((void*)0)) {
  if (walk->fd == fd)
   return walk;
  walk = walk->next;
 }
 return ((void*)0);
}
