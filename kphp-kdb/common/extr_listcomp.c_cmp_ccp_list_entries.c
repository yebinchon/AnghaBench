
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_list_entry {scalar_t__ freq; scalar_t__ leaf_value; } ;



__attribute__((used)) static int cmp_ccp_list_entries (const void *a, const void *b) {
  const struct ccp_list_entry *A = (const struct ccp_list_entry *) a;
  const struct ccp_list_entry *B = (const struct ccp_list_entry *) b;
  if (A->freq < B->freq) { return -1; }
  if (A->freq > B->freq) { return 1; }
  if (A->leaf_value < B->leaf_value) { return -1; }
  if (A->leaf_value > B->leaf_value) { return 1; }
  return 0;
}
