
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct index_extension {int extension_size; char* signature; } ;
struct TYPE_5__ {int tree_pool; int tree; } ;
typedef TYPE_1__ git_index ;


 int GIT_ERROR_INDEX ;
 int INDEX_EXT_CONFLICT_NAME_SIG ;
 int INDEX_EXT_TREECACHE_SIG ;
 int INDEX_EXT_UNMERGED_SIG ;
 size_t INDEX_FOOTER_SIZE ;
 int git_error_set (int ,char*,char*) ;
 scalar_t__ git_tree_cache_read (int *,char const*,size_t,int *) ;
 int index_error_invalid (char*) ;
 scalar_t__ memcmp (char*,int ,int) ;
 int memcpy (struct index_extension*,char const*,int) ;
 int ntohl (int) ;
 scalar_t__ read_conflict_names (TYPE_1__*,char const*,size_t) ;
 scalar_t__ read_reuc (TYPE_1__*,char const*,size_t) ;

__attribute__((used)) static int read_extension(size_t *read_len, git_index *index, const char *buffer, size_t buffer_size)
{
 struct index_extension dest;
 size_t total_size;


 memcpy(&dest, buffer, sizeof(struct index_extension));
 dest.extension_size = ntohl(dest.extension_size);

 total_size = dest.extension_size + sizeof(struct index_extension);

 if (dest.extension_size > total_size ||
  buffer_size < total_size ||
  buffer_size - total_size < INDEX_FOOTER_SIZE) {
  index_error_invalid("extension is truncated");
  return -1;
 }


 if (dest.signature[0] >= 'A' && dest.signature[0] <= 'Z') {

  if (memcmp(dest.signature, INDEX_EXT_TREECACHE_SIG, 4) == 0) {
   if (git_tree_cache_read(&index->tree, buffer + 8, dest.extension_size, &index->tree_pool) < 0)
    return -1;
  } else if (memcmp(dest.signature, INDEX_EXT_UNMERGED_SIG, 4) == 0) {
   if (read_reuc(index, buffer + 8, dest.extension_size) < 0)
    return -1;
  } else if (memcmp(dest.signature, INDEX_EXT_CONFLICT_NAME_SIG, 4) == 0) {
   if (read_conflict_names(index, buffer + 8, dest.extension_size) < 0)
    return -1;
  }


 } else {


  git_error_set(GIT_ERROR_INDEX, "unsupported mandatory extension: '%.4s'", dest.signature);
  return -1;
 }

 *read_len = total_size;

 return 0;
}
