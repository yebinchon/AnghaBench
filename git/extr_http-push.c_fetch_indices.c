
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int packs; int url; } ;




 int fprintf (int ,char*) ;
 int http_get_info_packs (int ,int *) ;
 scalar_t__ push_verbosely ;
 TYPE_1__* repo ;
 int stderr ;

__attribute__((used)) static int fetch_indices(void)
{
 int ret;

 if (push_verbosely)
  fprintf(stderr, "Getting pack list\n");

 switch (http_get_info_packs(repo->url, &repo->packs)) {
 case 128:
 case 129:
  ret = 0;
  break;
 default:
  ret = -1;
 }

 return ret;
}
