
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;


 int commit_list_insert (struct commit*,void*) ;

__attribute__((used)) static void show_commit(struct commit *commit, void *data)
{
 commit_list_insert(commit, data);
}
