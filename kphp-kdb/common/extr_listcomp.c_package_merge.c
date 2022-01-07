
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_list_entry {scalar_t__ freq; int leaf_value; struct ccp_list_entry* next; struct ccp_list_entry* right; struct ccp_list_entry* left; } ;


 struct ccp_list_entry* new_ccp_list_entry (scalar_t__) ;

__attribute__((used)) static struct ccp_list_entry *package_merge (struct ccp_list_entry *x, struct ccp_list_entry *y) {
  struct ccp_list_entry *head = ((void*)0), *tail = ((void*)0);
  while (x != ((void*)0)) {
    if (x->next == ((void*)0)) {
      break;
    }
    struct ccp_list_entry *w = x->next, *p = new_ccp_list_entry (x->freq + w->freq);
    p->leaf_value = -1;
    p->left = x;
    p->right = w;
    x = w->next;

    if (head == ((void*)0)) {
      head = tail = p;
    } else {
      tail = tail->next = p;
    }
  }
  x = head;
  head = tail = ((void*)0);
  while (x != ((void*)0) && y != ((void*)0)) {
    if (x->freq <= y->freq) {
      if (head == ((void*)0)) {
        head = tail = x;
      } else {
        tail = tail->next = x;
      }
      x = x->next;
    } else {
      if (head == ((void*)0)) {
        head = tail = y;
      } else {
        tail = tail->next = y;
      }
      y = y->next;
    }
  }
  if (y != ((void*)0)) {
    x = y;
  }
  if (head == ((void*)0)) {
    return x;
  }
  tail->next = x;
  return head;
}
