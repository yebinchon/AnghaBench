
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct index_state {int dir_hash; } ;
struct TYPE_3__ {unsigned int hash; } ;
struct dir_entry {int nr; TYPE_1__ ent; struct dir_entry* parent; scalar_t__ namelen; } ;


 int FLEX_ALLOC_MEM (struct dir_entry*,int ,scalar_t__,scalar_t__) ;
 int assert (int) ;
 int compute_dir_lock_nr (int *,unsigned int) ;
 struct dir_entry* find_dir_entry__hash (struct index_state*,scalar_t__,scalar_t__,unsigned int) ;
 int hashmap_add (int *,TYPE_1__*) ;
 int hashmap_entry_init (TYPE_1__*,unsigned int) ;
 int lock_dir_mutex (int) ;
 unsigned int memihash (scalar_t__,scalar_t__) ;
 unsigned int memihash_cont (unsigned int,scalar_t__,scalar_t__) ;
 int name ;
 int * strchr (scalar_t__,char) ;
 int unlock_dir_mutex (int) ;

__attribute__((used)) static struct dir_entry *hash_dir_entry_with_parent_and_prefix(
 struct index_state *istate,
 struct dir_entry *parent,
 struct strbuf *prefix)
{
 struct dir_entry *dir;
 unsigned int hash;
 int lock_nr;





 assert((parent != ((void*)0)) ^ (strchr(prefix->buf, '/') == ((void*)0)));

 if (parent)
  hash = memihash_cont(parent->ent.hash,
   prefix->buf + parent->namelen,
   prefix->len - parent->namelen);
 else
  hash = memihash(prefix->buf, prefix->len);

 lock_nr = compute_dir_lock_nr(&istate->dir_hash, hash);
 lock_dir_mutex(lock_nr);

 dir = find_dir_entry__hash(istate, prefix->buf, prefix->len, hash);
 if (!dir) {
  FLEX_ALLOC_MEM(dir, name, prefix->buf, prefix->len);
  hashmap_entry_init(&dir->ent, hash);
  dir->namelen = prefix->len;
  dir->parent = parent;
  hashmap_add(&istate->dir_hash, &dir->ent);

  if (parent) {
   unlock_dir_mutex(lock_nr);


   lock_nr = compute_dir_lock_nr(&istate->dir_hash, parent->ent.hash);
   lock_dir_mutex(lock_nr);
   parent->nr++;
  }
 }

 unlock_dir_mutex(lock_nr);

 return dir;
}
