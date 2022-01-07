
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int free; int next; } ;
typedef TYPE_1__ git_config_iterator ;
struct TYPE_10__ {int list; } ;
typedef TYPE_2__ git_config_entries ;
struct TYPE_11__ {TYPE_1__ parent; TYPE_2__* entries; int head; } ;
typedef TYPE_3__ config_entries_iterator ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_3__*) ;
 int config_iterator_free ;
 int config_iterator_next ;
 TYPE_3__* git__calloc (int,int) ;
 int git_config_entries_incref (TYPE_2__*) ;

int git_config_entries_iterator_new(git_config_iterator **out, git_config_entries *entries)
{
 config_entries_iterator *it;

 it = git__calloc(1, sizeof(config_entries_iterator));
 GIT_ERROR_CHECK_ALLOC(it);
 it->parent.next = config_iterator_next;
 it->parent.free = config_iterator_free;
 it->head = entries->list;
 it->entries = entries;

 git_config_entries_incref(entries);
 *out = &it->parent;

 return 0;
}
