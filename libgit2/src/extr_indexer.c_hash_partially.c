
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t inbuf_len; int const* inbuf; int trailer; } ;
typedef TYPE_1__ git_indexer ;


 size_t GIT_OID_RAWSZ ;
 int git_hash_update (int *,int const*,size_t) ;
 int memcpy (int const*,int const*,size_t) ;
 int memmove (int const*,int const*,size_t) ;

__attribute__((used)) static void hash_partially(git_indexer *idx, const uint8_t *data, size_t size)
{
 size_t to_expell, to_keep;

 if (size == 0)
  return;


 if (size >= GIT_OID_RAWSZ) {
  git_hash_update(&idx->trailer, idx->inbuf, idx->inbuf_len);
  git_hash_update(&idx->trailer, data, size - GIT_OID_RAWSZ);

  data += size - GIT_OID_RAWSZ;
  memcpy(idx->inbuf, data, GIT_OID_RAWSZ);
  idx->inbuf_len = GIT_OID_RAWSZ;
  return;
 }


 if (idx->inbuf_len + size <= GIT_OID_RAWSZ) {
  memcpy(idx->inbuf + idx->inbuf_len, data, size);
  idx->inbuf_len += size;
  return;
 }


 to_keep = GIT_OID_RAWSZ - size;
 to_expell = idx->inbuf_len - to_keep;

 git_hash_update(&idx->trailer, idx->inbuf, to_expell);

 memmove(idx->inbuf, idx->inbuf + to_expell, to_keep);
 memcpy(idx->inbuf + to_keep, data, size);
 idx->inbuf_len += size - to_expell;
}
