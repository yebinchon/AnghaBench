
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;
struct discovery {scalar_t__ proto_git; } ;


 struct discovery* discover_refs (char*,int ) ;
 int fetch_dumb (int,struct ref**) ;
 int fetch_git (struct discovery*,int,struct ref**) ;

__attribute__((used)) static int fetch(int nr_heads, struct ref **to_fetch)
{
 struct discovery *d = discover_refs("git-upload-pack", 0);
 if (d->proto_git)
  return fetch_git(d, nr_heads, to_fetch);
 else
  return fetch_dumb(nr_heads, to_fetch);
}
