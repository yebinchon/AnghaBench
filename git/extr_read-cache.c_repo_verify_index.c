
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int index_file; int index; } ;


 int verify_index_from (int ,int ) ;

__attribute__((used)) static int repo_verify_index(struct repository *repo)
{
 return verify_index_from(repo->index, repo->index_file);
}
