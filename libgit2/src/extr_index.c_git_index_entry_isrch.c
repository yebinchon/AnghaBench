
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_srch_key {size_t pathlen; scalar_t__ stage; int path; } ;
struct entry_internal {size_t pathlen; int entry; int path; } ;


 int GIT_INDEX_ENTRY_STAGE (int *) ;
 scalar_t__ GIT_INDEX_STAGE_ANY ;
 int strncasecmp (int ,int ,size_t) ;

int git_index_entry_isrch(const void *key, const void *array_member)
{
 const struct entry_srch_key *srch_key = key;
 const struct entry_internal *entry = array_member;
 int cmp;
 size_t len1, len2, len;

 len1 = srch_key->pathlen;
 len2 = entry->pathlen;
 len = len1 < len2 ? len1 : len2;

 cmp = strncasecmp(srch_key->path, entry->path, len);

 if (cmp)
  return cmp;
 if (len1 < len2)
  return -1;
 if (len1 > len2)
  return 1;

 if (srch_key->stage != GIT_INDEX_STAGE_ANY)
  return srch_key->stage - GIT_INDEX_ENTRY_STAGE(&entry->entry);

 return 0;
}
