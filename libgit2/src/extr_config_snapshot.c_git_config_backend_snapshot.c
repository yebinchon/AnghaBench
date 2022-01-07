
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int readonly; int (* snapshot ) (TYPE_1__**,TYPE_1__*) ;int free; int unlock; int lock; int iterator; int del_multivar; int del; int set_multivar; int set; int get; int open; void* version; } ;
typedef TYPE_1__ git_config_backend ;
struct TYPE_8__ {TYPE_1__ parent; TYPE_1__* source; int values_mutex; } ;
typedef TYPE_2__ config_snapshot_backend ;


 void* GIT_CONFIG_BACKEND_VERSION ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int config_snapshot_delete ;
 int config_snapshot_delete_multivar ;
 int config_snapshot_free ;
 int config_snapshot_get ;
 int config_snapshot_iterator ;
 int config_snapshot_lock ;
 int config_snapshot_open ;
 int config_snapshot_set ;
 int config_snapshot_set_multivar ;
 int config_snapshot_unlock ;
 TYPE_2__* git__calloc (int,int) ;
 int git_mutex_init (int *) ;

int git_config_backend_snapshot(git_config_backend **out, git_config_backend *source)
{
 config_snapshot_backend *backend;

 backend = git__calloc(1, sizeof(config_snapshot_backend));
 GIT_ERROR_CHECK_ALLOC(backend);

 backend->parent.version = GIT_CONFIG_BACKEND_VERSION;
 git_mutex_init(&backend->values_mutex);

 backend->source = source;

 backend->parent.readonly = 1;
 backend->parent.version = GIT_CONFIG_BACKEND_VERSION;
 backend->parent.open = config_snapshot_open;
 backend->parent.get = config_snapshot_get;
 backend->parent.set = config_snapshot_set;
 backend->parent.set_multivar = config_snapshot_set_multivar;
 backend->parent.snapshot = git_config_backend_snapshot;
 backend->parent.del = config_snapshot_delete;
 backend->parent.del_multivar = config_snapshot_delete_multivar;
 backend->parent.iterator = config_snapshot_iterator;
 backend->parent.lock = config_snapshot_lock;
 backend->parent.unlock = config_snapshot_unlock;
 backend->parent.free = config_snapshot_free;

 *out = &backend->parent;

 return 0;
}
