
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct commit {int dummy; } ;


 int repo_parse_commit_gently (struct repository*,struct commit*,int ) ;

__attribute__((used)) static inline int repo_parse_commit(struct repository *r, struct commit *item)
{
 return repo_parse_commit_gently(r, item, 0);
}
