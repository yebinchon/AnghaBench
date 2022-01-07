
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_index_entry ;
struct TYPE_5__ {size_t length; int * contents; } ;
struct TYPE_4__ {TYPE_3__ deleted; int readers; } ;
typedef TYPE_1__ git_index ;


 int * git__swap (int ,int *) ;
 scalar_t__ git_atomic_get (int *) ;
 int git_vector_clear (TYPE_3__*) ;
 int index_entry_free (int *) ;

__attribute__((used)) static void index_free_deleted(git_index *index)
{
 int readers = (int)git_atomic_get(&index->readers);
 size_t i;

 if (readers > 0 || !index->deleted.length)
  return;

 for (i = 0; i < index->deleted.length; ++i) {
  git_index_entry *ie = git__swap(index->deleted.contents[i], ((void*)0));
  index_entry_free(ie);
 }

 git_vector_clear(&index->deleted);
}
