
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char const* buf; } ;
struct object_id {int dummy; } ;
struct combine_diff_path {char* path; unsigned int mode; int oid; int * parent; struct combine_diff_path* next; } ;


 int FREE_AND_NULL (struct combine_diff_path*) ;
 size_t combine_diff_path_size (int,size_t) ;
 int memcpy (char*,char const*,int) ;
 struct object_id const null_oid ;
 int oidcpy (int *,struct object_id const*) ;
 size_t st_add (int,int) ;
 struct combine_diff_path* xmalloc (size_t) ;

__attribute__((used)) static struct combine_diff_path *path_appendnew(struct combine_diff_path *last,
 int nparent, const struct strbuf *base, const char *path, int pathlen,
 unsigned mode, const struct object_id *oid)
{
 struct combine_diff_path *p;
 size_t len = st_add(base->len, pathlen);
 size_t alloclen = combine_diff_path_size(nparent, len);


 p = last->next;
 if (p && (alloclen > (intptr_t)p->next)) {
  FREE_AND_NULL(p);
 }

 if (!p) {
  p = xmalloc(alloclen);





  p->next = (struct combine_diff_path *)(intptr_t)alloclen;
 }

 last->next = p;

 p->path = (char *)&(p->parent[nparent]);
 memcpy(p->path, base->buf, base->len);
 memcpy(p->path + base->len, path, pathlen);
 p->path[len] = 0;
 p->mode = mode;
 oidcpy(&p->oid, oid ? oid : &null_oid);

 return p;
}
