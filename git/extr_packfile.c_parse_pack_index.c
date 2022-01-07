
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int hash; int pack_name; } ;


 struct packed_git* alloc_packed_git (size_t) ;
 scalar_t__ check_packed_git_idx (char const*,struct packed_git*) ;
 int free (struct packed_git*) ;
 int hashcpy (int ,unsigned char*) ;
 int memcpy (int ,char const*,size_t) ;
 char* sha1_pack_name (unsigned char*) ;
 size_t st_add (int ,int) ;
 int strlen (char const*) ;

struct packed_git *parse_pack_index(unsigned char *sha1, const char *idx_path)
{
 const char *path = sha1_pack_name(sha1);
 size_t alloc = st_add(strlen(path), 1);
 struct packed_git *p = alloc_packed_git(alloc);

 memcpy(p->pack_name, path, alloc);
 hashcpy(p->hash, sha1);
 if (check_packed_git_idx(idx_path, p)) {
  free(p);
  return ((void*)0);
 }

 return p;
}
