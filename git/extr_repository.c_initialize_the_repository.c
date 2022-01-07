
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parsed_objects; int objects; int * index; } ;


 int GIT_HASH_SHA1 ;
 int parsed_object_pool_new () ;
 int raw_object_store_new () ;
 int repo_set_hash_algo (TYPE_1__*,int ) ;
 int the_index ;
 TYPE_1__ the_repo ;
 TYPE_1__* the_repository ;

void initialize_the_repository(void)
{
 the_repository = &the_repo;

 the_repo.index = &the_index;
 the_repo.objects = raw_object_store_new();
 the_repo.parsed_objects = parsed_object_pool_new();

 repo_set_hash_algo(&the_repo, GIT_HASH_SHA1);
}
