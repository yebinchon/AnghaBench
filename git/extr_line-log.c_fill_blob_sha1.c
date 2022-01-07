
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct diff_filespec {int path; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int die (char*,int ) ;
 int fill_filespec (struct diff_filespec*,struct object_id*,int,unsigned short) ;
 scalar_t__ get_tree_entry (struct repository*,int *,int ,struct object_id*,unsigned short*) ;

__attribute__((used)) static void fill_blob_sha1(struct repository *r, struct commit *commit,
      struct diff_filespec *spec)
{
 unsigned short mode;
 struct object_id oid;

 if (get_tree_entry(r, &commit->object.oid, spec->path, &oid, &mode))
  die("There is no path %s in the commit", spec->path);
 fill_filespec(spec, &oid, 1, mode);

 return;
}
