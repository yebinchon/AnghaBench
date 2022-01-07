
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx_list {struct ctx_list* prev; struct ctx_list* next; } ;



__attribute__((used)) static inline void add_to_ctx_list(struct ctx_list *head, struct ctx_list *entry)
{
 entry->next = head;
 (entry->prev = head->prev)->next = entry;
 head->prev = entry;
}
