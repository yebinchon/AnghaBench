
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;
typedef int git_index ;


 int git_index_add_from_buffer (int *,int const*,void const*,size_t) ;

int git_index_add_frombuffer(
    git_index *index, const git_index_entry *source_entry,
    const void *buffer, size_t len)
{
 return git_index_add_from_buffer(index, source_entry, buffer, len);
}
