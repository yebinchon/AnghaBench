
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_9__ {int (* exists ) (TYPE_1__*,int const*) ;int (* freshen ) (TYPE_1__*,int const*) ;int refresh; } ;
typedef TYPE_1__ git_odb_backend ;
struct TYPE_12__ {size_t length; } ;
struct TYPE_10__ {TYPE_8__ backends; } ;
typedef TYPE_2__ git_odb ;
struct TYPE_11__ {TYPE_1__* backend; } ;
typedef TYPE_3__ backend_internal ;


 TYPE_3__* git_vector_get (TYPE_8__*,size_t) ;
 int stub1 (TYPE_1__*,int const*) ;
 int stub2 (TYPE_1__*,int const*) ;

__attribute__((used)) static int odb_freshen_1(
 git_odb *db,
 const git_oid *id,
 bool only_refreshed)
{
 size_t i;
 bool found = 0;

 for (i = 0; i < db->backends.length && !found; ++i) {
  backend_internal *internal = git_vector_get(&db->backends, i);
  git_odb_backend *b = internal->backend;

  if (only_refreshed && !b->refresh)
   continue;

  if (b->freshen != ((void*)0))
   found = !b->freshen(b, id);
  else if (b->exists != ((void*)0))
   found = b->exists(b, id);
 }

 return (int)found;
}
