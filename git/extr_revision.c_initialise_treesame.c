
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treesame_state {unsigned int nparents; } ;
struct rev_info {int treesame; } ;
struct commit {int object; int parents; } ;


 int add_decoration (int *,int *,struct treesame_state*) ;
 unsigned int commit_list_count (int ) ;
 int st_add (int,unsigned int) ;
 struct treesame_state* xcalloc (int,int ) ;

__attribute__((used)) static struct treesame_state *initialise_treesame(struct rev_info *revs, struct commit *commit)
{
 unsigned n = commit_list_count(commit->parents);
 struct treesame_state *st = xcalloc(1, st_add(sizeof(*st), n));
 st->nparents = n;
 add_decoration(&revs->treesame, &commit->object, st);
 return st;
}
