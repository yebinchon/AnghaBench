
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;


 int repo_parse_commit_internal (int ,struct commit*,int ,int ) ;
 int the_repository ;

__attribute__((used)) static inline int parse_commit_no_graph(struct commit *commit)
{
 return repo_parse_commit_internal(the_repository, commit, 0, 0);
}
