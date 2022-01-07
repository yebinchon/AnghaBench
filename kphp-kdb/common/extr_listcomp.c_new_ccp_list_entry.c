
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_list_entry {long long freq; int * next; int right; int left; } ;


 struct ccp_list_entry* zmalloc (int) ;

__attribute__((used)) static struct ccp_list_entry *new_ccp_list_entry (long long freq) {
  struct ccp_list_entry *x = zmalloc (sizeof (struct ccp_list_entry));
  x->freq = freq;
  x->left = x->right = x->next = ((void*)0);
  return x;
}
