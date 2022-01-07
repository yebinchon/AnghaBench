
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walker {scalar_t__ get_verbosely; } ;
struct alt_base {int got_indices; char* base; int packs; } ;




 int fprintf (int ,char*,char*) ;
 int http_get_info_packs (char*,int *) ;
 int stderr ;

__attribute__((used)) static int fetch_indices(struct walker *walker, struct alt_base *repo)
{
 int ret;

 if (repo->got_indices)
  return 0;

 if (walker->get_verbosely)
  fprintf(stderr, "Getting pack list for %s\n", repo->base);

 switch (http_get_info_packs(repo->base, &repo->packs)) {
 case 128:
 case 129:
  repo->got_indices = 1;
  ret = 0;
  break;
 default:
  repo->got_indices = 0;
  ret = -1;
 }

 return ret;
}
