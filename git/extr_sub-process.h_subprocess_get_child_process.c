
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int dummy; } ;
struct subprocess_entry {struct child_process process; } ;



__attribute__((used)) static inline struct child_process *subprocess_get_child_process(
  struct subprocess_entry *entry)
{
 return &entry->process;
}
