
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct merge_options {TYPE_1__* repo; } ;
struct index_state {int cache_nr; TYPE_2__** cache; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {struct index_state* index; } ;


 int ce_stage (TYPE_2__*) ;
 int file_exists (char const*) ;
 int index_name_pos (struct index_state*,char const*,int ) ;
 int strcmp (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int would_lose_untracked(struct merge_options *opt, const char *path)
{
 struct index_state *istate = opt->repo->index;
 int pos = index_name_pos(istate, path, strlen(path));

 if (pos < 0)
  pos = -1 - pos;
 while (pos < istate->cache_nr &&
        !strcmp(path, istate->cache[pos]->name)) {






  switch (ce_stage(istate->cache[pos])) {
  case 0:
  case 2:
   return 0;
  }
  pos++;
 }
 return file_exists(path);
}
