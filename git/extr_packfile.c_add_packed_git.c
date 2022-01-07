
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mtime; int st_size; int st_mode; } ;
struct packed_git {int pack_keep; int pack_promisor; int pack_local; int hash; int mtime; int pack_size; scalar_t__ pack_name; } ;
struct TYPE_2__ {size_t hexsz; } ;


 int F_OK ;
 int S_ISREG (int ) ;
 int access (scalar_t__,int ) ;
 struct packed_git* alloc_packed_git (size_t) ;
 int free (struct packed_git*) ;
 scalar_t__ get_sha1_hex (char const*,int ) ;
 int hashclr (int ) ;
 int memcpy (scalar_t__,char const*,size_t) ;
 size_t st_add3 (size_t,int ,int) ;
 scalar_t__ stat (scalar_t__,struct stat*) ;
 int strip_suffix_mem (char const*,size_t*,char*) ;
 int strlen (char*) ;
 TYPE_1__* the_hash_algo ;
 int xsnprintf (scalar_t__,size_t,char*) ;

struct packed_git *add_packed_git(const char *path, size_t path_len, int local)
{
 struct stat st;
 size_t alloc;
 struct packed_git *p;





 if (!strip_suffix_mem(path, &path_len, ".idx"))
  return ((void*)0);





 alloc = st_add3(path_len, strlen(".promisor"), 1);
 p = alloc_packed_git(alloc);
 memcpy(p->pack_name, path, path_len);

 xsnprintf(p->pack_name + path_len, alloc - path_len, ".keep");
 if (!access(p->pack_name, F_OK))
  p->pack_keep = 1;

 xsnprintf(p->pack_name + path_len, alloc - path_len, ".promisor");
 if (!access(p->pack_name, F_OK))
  p->pack_promisor = 1;

 xsnprintf(p->pack_name + path_len, alloc - path_len, ".pack");
 if (stat(p->pack_name, &st) || !S_ISREG(st.st_mode)) {
  free(p);
  return ((void*)0);
 }




 p->pack_size = st.st_size;
 p->pack_local = local;
 p->mtime = st.st_mtime;
 if (path_len < the_hash_algo->hexsz ||
     get_sha1_hex(path + path_len - the_hash_algo->hexsz, p->hash))
  hashclr(p->hash);
 return p;
}
