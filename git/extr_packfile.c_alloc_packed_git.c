
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int pack_fd; } ;


 int memset (struct packed_git*,int ,int) ;
 int st_add (int,int) ;
 struct packed_git* xmalloc (int ) ;

__attribute__((used)) static struct packed_git *alloc_packed_git(int extra)
{
 struct packed_git *p = xmalloc(st_add(sizeof(*p), extra));
 memset(p, 0, sizeof(*p));
 p->pack_fd = -1;
 return p;
}
