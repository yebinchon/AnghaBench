
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {struct commit_list* next; } ;



__attribute__((used)) static struct commit_list *reverse_commit_list(struct commit_list *list)
{
 struct commit_list *next = ((void*)0), *current, *backup;
 for (current = list; current; current = backup) {
  backup = current->next;
  current->next = next;
  next = current;
 }
 return next;
}
