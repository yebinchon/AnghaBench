
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_config_iterator ;
struct TYPE_3__ {int entries; } ;
typedef TYPE_1__ config_entries_iterator ;


 int git__free (TYPE_1__*) ;
 int git_config_entries_free (int ) ;

void config_iterator_free(git_config_iterator *iter)
{
 config_entries_iterator *it = (config_entries_iterator *) iter;
 git_config_entries_free(it->entries);
 git__free(it);
}
