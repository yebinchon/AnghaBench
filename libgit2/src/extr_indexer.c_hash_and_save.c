
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct git_pack_entry {int crc; int oid; int sha1; } ;
struct entry {int crc; int oid; int sha1; } ;
struct TYPE_9__ {struct git_pack_entry* data; } ;
typedef TYPE_2__ git_rawobj ;
typedef int git_oid ;
typedef scalar_t__ git_off_t ;
struct TYPE_10__ {TYPE_1__* pack; scalar_t__ off; } ;
typedef TYPE_3__ git_indexer ;
struct TYPE_8__ {int mwf; } ;


 int GIT_ERROR_CHECK_ALLOC (struct git_pack_entry*) ;
 int GIT_ERROR_INDEXER ;
 int Z_NULL ;
 int crc32 (long,int ,int ) ;
 scalar_t__ crc_object (int *,int *,scalar_t__,size_t) ;
 struct git_pack_entry* git__calloc (int,int) ;
 int git__free (struct git_pack_entry*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_odb__hashobj (int *,TYPE_2__*) ;
 int git_oid_cpy (int *,int *) ;
 int save_entry (TYPE_3__*,struct git_pack_entry*,struct git_pack_entry*,scalar_t__) ;

__attribute__((used)) static int hash_and_save(git_indexer *idx, git_rawobj *obj, git_off_t entry_start)
{
 git_oid oid;
 size_t entry_size;
 struct entry *entry;
 struct git_pack_entry *pentry = ((void*)0);

 entry = git__calloc(1, sizeof(*entry));
 GIT_ERROR_CHECK_ALLOC(entry);

 if (git_odb__hashobj(&oid, obj) < 0) {
  git_error_set(GIT_ERROR_INDEXER, "failed to hash object");
  goto on_error;
 }

 pentry = git__calloc(1, sizeof(struct git_pack_entry));
 GIT_ERROR_CHECK_ALLOC(pentry);

 git_oid_cpy(&pentry->sha1, &oid);
 git_oid_cpy(&entry->oid, &oid);
 entry->crc = crc32(0L, Z_NULL, 0);

 entry_size = (size_t)(idx->off - entry_start);
 if (crc_object(&entry->crc, &idx->pack->mwf, entry_start, entry_size) < 0)
  goto on_error;

 return save_entry(idx, entry, pentry, entry_start);

on_error:
 git__free(pentry);
 git__free(entry);
 git__free(obj->data);
 return -1;
}
