
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct tree {int object; int size; int buffer; } ;
struct object {int dummy; } ;
struct name_entry {char* path; int mode; int oid; } ;
struct fsck_options {int (* walk ) (struct object*,int ,void*,struct fsck_options*) ;} ;


 int OBJ_BLOB ;
 int OBJ_TREE ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int describe_object (struct fsck_options*,int *) ;
 int error (char*,int ,char*,int ) ;
 char* get_object_name (struct fsck_options*,int *) ;
 scalar_t__ init_tree_desc_gently (struct tree_desc*,int ,int ) ;
 scalar_t__ lookup_blob (int ,int *) ;
 scalar_t__ lookup_tree (int ,int *) ;
 scalar_t__ parse_tree (struct tree*) ;
 int put_object_name (struct fsck_options*,struct object*,char*,char const*,char*) ;
 int stub1 (struct object*,int ,void*,struct fsck_options*) ;
 int stub2 (struct object*,int ,void*,struct fsck_options*) ;
 int the_repository ;
 scalar_t__ tree_entry_gently (struct tree_desc*,struct name_entry*) ;

__attribute__((used)) static int fsck_walk_tree(struct tree *tree, void *data, struct fsck_options *options)
{
 struct tree_desc desc;
 struct name_entry entry;
 int res = 0;
 const char *name;

 if (parse_tree(tree))
  return -1;

 name = get_object_name(options, &tree->object);
 if (init_tree_desc_gently(&desc, tree->buffer, tree->size))
  return -1;
 while (tree_entry_gently(&desc, &entry)) {
  struct object *obj;
  int result;

  if (S_ISGITLINK(entry.mode))
   continue;

  if (S_ISDIR(entry.mode)) {
   obj = (struct object *)lookup_tree(the_repository, &entry.oid);
   if (name && obj)
    put_object_name(options, obj, "%s%s/", name,
     entry.path);
   result = options->walk(obj, OBJ_TREE, data, options);
  }
  else if (S_ISREG(entry.mode) || S_ISLNK(entry.mode)) {
   obj = (struct object *)lookup_blob(the_repository, &entry.oid);
   if (name && obj)
    put_object_name(options, obj, "%s%s", name,
     entry.path);
   result = options->walk(obj, OBJ_BLOB, data, options);
  }
  else {
   result = error("in tree %s: entry %s has bad mode %.6o",
     describe_object(options, &tree->object), entry.path, entry.mode);
  }
  if (result < 0)
   return result;
  if (!res)
   res = result;
 }
 return res;
}
