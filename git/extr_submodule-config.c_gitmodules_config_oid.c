
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct TYPE_6__ {TYPE_1__* submodule_cache; } ;
struct TYPE_5__ {int gitmodules_read; } ;


 struct strbuf STRBUF_INIT ;
 int git_config_from_blob_oid (int ,int ,struct object_id*,TYPE_2__*) ;
 scalar_t__ gitmodule_oid_from_commit (struct object_id const*,struct object_id*,struct strbuf*) ;
 int gitmodules_cb ;
 int strbuf_release (struct strbuf*) ;
 int submodule_cache_check_init (TYPE_2__*) ;
 TYPE_2__* the_repository ;

void gitmodules_config_oid(const struct object_id *commit_oid)
{
 struct strbuf rev = STRBUF_INIT;
 struct object_id oid;

 submodule_cache_check_init(the_repository);

 if (gitmodule_oid_from_commit(commit_oid, &oid, &rev)) {
  git_config_from_blob_oid(gitmodules_cb, rev.buf,
      &oid, the_repository);
 }
 strbuf_release(&rev);

 the_repository->submodule_cache->gitmodules_read = 1;
}
