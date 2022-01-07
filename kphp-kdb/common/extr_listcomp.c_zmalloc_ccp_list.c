
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_list_entry {struct ccp_list_entry* next; int leaf_value; int freq; } ;


 struct ccp_list_entry* new_ccp_list_entry (int ) ;

__attribute__((used)) static struct ccp_list_entry *zmalloc_ccp_list (struct ccp_list_entry *a, int M) {
  int i;
  struct ccp_list_entry *head = ((void*)0), *tail = ((void*)0);
  for (i = 0; i < M; i++) {
    struct ccp_list_entry *p = new_ccp_list_entry (a[i].freq);
    p->leaf_value = a[i].leaf_value;
    if (head == ((void*)0)) {
      head = tail = p;
    } else {
      tail = tail->next = p;
    }
  }
  return head;
}
