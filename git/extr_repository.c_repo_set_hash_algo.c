
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int * hash_algo; } ;


 int * hash_algos ;

void repo_set_hash_algo(struct repository *repo, int hash_algo)
{
 repo->hash_algo = &hash_algos[hash_algo];
}
