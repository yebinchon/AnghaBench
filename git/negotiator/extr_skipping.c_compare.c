
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int commit; } ;


 int compare_commits_by_commit_date (int ,int ,int *) ;

__attribute__((used)) static int compare(const void *a_, const void *b_, void *unused)
{
 const struct entry *a = a_;
 const struct entry *b = b_;
 return compare_commits_by_commit_date(a->commit, b->commit, ((void*)0));
}
