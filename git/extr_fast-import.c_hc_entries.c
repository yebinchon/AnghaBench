
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int avail_tree_table_sz ;

__attribute__((used)) static unsigned int hc_entries(unsigned int cnt)
{
 cnt = cnt & 7 ? (cnt / 8) + 1 : cnt / 8;
 return cnt < avail_tree_table_sz ? cnt : avail_tree_table_sz - 1;
}
