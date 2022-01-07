
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int pack_name; scalar_t__ index_data; } ;


 int BUG (char*) ;
 int check_packed_git_idx (char*,struct packed_git*) ;
 int free (char*) ;
 int strip_suffix (int ,char*,size_t*) ;
 char* xstrfmt (char*,int,int ) ;

int open_pack_index(struct packed_git *p)
{
 char *idx_name;
 size_t len;
 int ret;

 if (p->index_data)
  return 0;

 if (!strip_suffix(p->pack_name, ".pack", &len))
  BUG("pack_name does not end in .pack");
 idx_name = xstrfmt("%.*s.idx", (int)len, p->pack_name);
 ret = check_packed_git_idx(idx_name, p);
 free(idx_name);
 return ret;
}
