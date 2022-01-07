
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct lazy_entry {int dummy; } ;
struct index_state {TYPE_1__** cache; } ;
struct dir_entry {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int assert (int) ;
 int die (char*) ;
 int handle_range_1 (struct index_state*,int,int,struct dir_entry*,struct strbuf*,struct lazy_entry*) ;
 struct dir_entry* hash_dir_entry_with_parent_and_prefix (struct index_state*,struct dir_entry*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_setlen (struct strbuf*,int) ;
 scalar_t__ strncmp (int ,int ,int) ;

__attribute__((used)) static int handle_range_dir(
 struct index_state *istate,
 int k_start,
 int k_end,
 struct dir_entry *parent,
 struct strbuf *prefix,
 struct lazy_entry *lazy_entries,
 struct dir_entry **dir_new_out)
{
 int rc, k;
 int input_prefix_len = prefix->len;
 struct dir_entry *dir_new;

 dir_new = hash_dir_entry_with_parent_and_prefix(istate, parent, prefix);

 strbuf_addch(prefix, '/');





 if (k_start + 1 >= k_end)
  k = k_end;
 else if (strncmp(istate->cache[k_start + 1]->name, prefix->buf, prefix->len) > 0)
  k = k_start + 1;
 else if (strncmp(istate->cache[k_end - 1]->name, prefix->buf, prefix->len) == 0)
  k = k_end;
 else {
  int begin = k_start;
  int end = k_end;
  assert(begin >= 0);
  while (begin < end) {
   int mid = begin + ((end - begin) >> 1);
   int cmp = strncmp(istate->cache[mid]->name, prefix->buf, prefix->len);
   if (cmp == 0)
    begin = mid + 1;
   else if (cmp > 0)
    end = mid;
   else
    die("cache entry out of order");
  }
  k = begin;
 }




 rc = handle_range_1(istate, k_start, k, dir_new, prefix, lazy_entries);

 strbuf_setlen(prefix, input_prefix_len);

 *dir_new_out = dir_new;
 return rc;
}
