
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct tree_key_search {scalar_t__ filename_len; int filename; } ;
struct TYPE_2__ {scalar_t__ filename_len; int filename; } ;
typedef TYPE_1__ git_tree_entry ;


 int memcmp (int ,int ,scalar_t__ const) ;

__attribute__((used)) static int homing_search_cmp(const void *key, const void *array_member)
{
 const struct tree_key_search *ksearch = key;
 const git_tree_entry *entry = array_member;

 const uint16_t len1 = ksearch->filename_len;
 const uint16_t len2 = entry->filename_len;

 return memcmp(
  ksearch->filename,
  entry->filename,
  len1 < len2 ? len1 : len2
 );
}
