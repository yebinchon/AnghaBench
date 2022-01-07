
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int tagged; int object; } ;
struct fsck_options {int (* walk ) (int ,int ,void*,struct fsck_options*) ;} ;


 int OBJ_ANY ;
 char* get_object_name (struct fsck_options*,int *) ;
 scalar_t__ parse_tag (struct tag*) ;
 int put_object_name (struct fsck_options*,int ,char*,char*) ;
 int stub1 (int ,int ,void*,struct fsck_options*) ;

__attribute__((used)) static int fsck_walk_tag(struct tag *tag, void *data, struct fsck_options *options)
{
 char *name = get_object_name(options, &tag->object);

 if (parse_tag(tag))
  return -1;
 if (name)
  put_object_name(options, tag->tagged, "%s", name);
 return options->walk(tag->tagged, OBJ_ANY, data, options);
}
