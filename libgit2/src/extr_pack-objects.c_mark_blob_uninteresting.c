
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walk_object {int uninteresting; } ;
typedef int git_packbuilder ;
typedef int git_oid ;


 int retrieve_object (struct walk_object**,int *,int const*) ;

__attribute__((used)) static int mark_blob_uninteresting(git_packbuilder *pb, const git_oid *id)
{
 int error;
 struct walk_object *obj;

 if ((error = retrieve_object(&obj, pb, id)) < 0)
  return error;

 obj->uninteresting = 1;

 return 0;
}
