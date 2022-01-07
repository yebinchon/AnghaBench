
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {int mode; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int git_index_conflict_get (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int *,char const*) ;
 int git_index_conflict_remove (int *,char const*) ;
 int git_index_reuc_add (int *,char const*,int,int const*,int,int const*,int,int const*) ;

__attribute__((used)) static int index_conflict_to_reuc(git_index *index, const char *path)
{
 const git_index_entry *conflict_entries[3];
 int ancestor_mode, our_mode, their_mode;
 git_oid const *ancestor_oid, *our_oid, *their_oid;
 int ret;

 if ((ret = git_index_conflict_get(&conflict_entries[0],
  &conflict_entries[1], &conflict_entries[2], index, path)) < 0)
  return ret;

 ancestor_mode = conflict_entries[0] == ((void*)0) ? 0 : conflict_entries[0]->mode;
 our_mode = conflict_entries[1] == ((void*)0) ? 0 : conflict_entries[1]->mode;
 their_mode = conflict_entries[2] == ((void*)0) ? 0 : conflict_entries[2]->mode;

 ancestor_oid = conflict_entries[0] == ((void*)0) ? ((void*)0) : &conflict_entries[0]->id;
 our_oid = conflict_entries[1] == ((void*)0) ? ((void*)0) : &conflict_entries[1]->id;
 their_oid = conflict_entries[2] == ((void*)0) ? ((void*)0) : &conflict_entries[2]->id;

 if ((ret = git_index_reuc_add(index, path, ancestor_mode, ancestor_oid,
  our_mode, our_oid, their_mode, their_oid)) >= 0)
  ret = git_index_conflict_remove(index, path);

 return ret;
}
