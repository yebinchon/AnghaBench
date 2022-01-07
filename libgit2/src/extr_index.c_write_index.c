
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct index_header {void* entry_count; void* version; void* signature; } ;
struct TYPE_20__ {struct index_header* id; } ;
typedef TYPE_4__ git_oid ;
struct TYPE_19__ {scalar_t__ length; } ;
struct TYPE_18__ {scalar_t__ length; } ;
struct TYPE_17__ {scalar_t__ length; } ;
struct TYPE_21__ {scalar_t__ version; TYPE_3__ reuc; TYPE_2__ names; int * tree; TYPE_1__ entries; } ;
typedef TYPE_5__ git_index ;
typedef int git_filebuf ;


 int GIT_OID_RAWSZ ;
 scalar_t__ INDEX_HEADER_SIG ;
 scalar_t__ INDEX_VERSION_NUMBER_EXT ;
 scalar_t__ INDEX_VERSION_NUMBER_LB ;
 int assert (int) ;
 int clear_uptodate (TYPE_5__*) ;
 int git_filebuf_hash (TYPE_4__*,int *) ;
 scalar_t__ git_filebuf_write (int *,struct index_header*,int) ;
 int git_oid_cpy (TYPE_4__*,TYPE_4__*) ;
 void* htonl (scalar_t__) ;
 int is_index_extended (TYPE_5__*) ;
 scalar_t__ write_entries (TYPE_5__*,int *) ;
 scalar_t__ write_name_extension (TYPE_5__*,int *) ;
 scalar_t__ write_reuc_extension (TYPE_5__*,int *) ;
 scalar_t__ write_tree_extension (TYPE_5__*,int *) ;

__attribute__((used)) static int write_index(git_oid *checksum, git_index *index, git_filebuf *file)
{
 git_oid hash_final;
 struct index_header header;
 bool is_extended;
 uint32_t index_version_number;

 assert(index && file);

 if (index->version <= INDEX_VERSION_NUMBER_EXT) {
  is_extended = is_index_extended(index);
  index_version_number = is_extended ? INDEX_VERSION_NUMBER_EXT : INDEX_VERSION_NUMBER_LB;
 } else {
  index_version_number = index->version;
 }

 header.signature = htonl(INDEX_HEADER_SIG);
 header.version = htonl(index_version_number);
 header.entry_count = htonl((uint32_t)index->entries.length);

 if (git_filebuf_write(file, &header, sizeof(struct index_header)) < 0)
  return -1;

 if (write_entries(index, file) < 0)
  return -1;


 if (index->tree != ((void*)0) && write_tree_extension(index, file) < 0)
  return -1;


 if (index->names.length > 0 && write_name_extension(index, file) < 0)
  return -1;


 if (index->reuc.length > 0 && write_reuc_extension(index, file) < 0)
  return -1;


 git_filebuf_hash(&hash_final, file);
 git_oid_cpy(checksum, &hash_final);


 if (git_filebuf_write(file, hash_final.id, GIT_OID_RAWSZ) < 0)
  return -1;


 clear_uptodate(index);

 return 0;
}
