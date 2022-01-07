
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct git_pack_file {TYPE_1__ index_map; int * oids; } ;


 int git__free (int *) ;
 int git_futils_mmap_free (TYPE_1__*) ;

__attribute__((used)) static void pack_index_free(struct git_pack_file *p)
{
 if (p->oids) {
  git__free(p->oids);
  p->oids = ((void*)0);
 }
 if (p->index_map.data) {
  git_futils_mmap_free(&p->index_map);
  p->index_map.data = ((void*)0);
 }
}
