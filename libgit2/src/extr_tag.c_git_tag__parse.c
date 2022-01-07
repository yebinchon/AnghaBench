
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_odb_object ;


 char* git_odb_object_data (int *) ;
 int git_odb_object_size (int *) ;
 int tag_parse (int *,char const*,char const*) ;

int git_tag__parse(void *_tag, git_odb_object *odb_obj)
{
 git_tag *tag = _tag;
 const char *buffer = git_odb_object_data(odb_obj);
 const char *buffer_end = buffer + git_odb_object_size(odb_obj);

 return tag_parse(tag, buffer, buffer_end);
}
