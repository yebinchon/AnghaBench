
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct tag {int dummy; } ;
struct object {int type; int oid; } ;
struct fsck_options {int dummy; } ;
struct commit {int dummy; } ;




 int OBJ_NONE ;


 int describe_object (struct fsck_options*,struct object*) ;
 int error (char*,int ) ;
 int fsck_walk_commit (struct commit*,void*,struct fsck_options*) ;
 int fsck_walk_tag (struct tag*,void*,struct fsck_options*) ;
 int fsck_walk_tree (struct tree*,void*,struct fsck_options*) ;
 int parse_object (int ,int *) ;
 int the_repository ;

int fsck_walk(struct object *obj, void *data, struct fsck_options *options)
{
 if (!obj)
  return -1;

 if (obj->type == OBJ_NONE)
  parse_object(the_repository, &obj->oid);

 switch (obj->type) {
 case 131:
  return 0;
 case 128:
  return fsck_walk_tree((struct tree *)obj, data, options);
 case 130:
  return fsck_walk_commit((struct commit *)obj, data, options);
 case 129:
  return fsck_walk_tag((struct tag *)obj, data, options);
 default:
  error("Unknown object type for %s", describe_object(options, obj));
  return -1;
 }
}
