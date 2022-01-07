
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int id; } ;
typedef TYPE_2__ object_data ;
struct TYPE_16__ {int type; int len; int data; } ;
typedef TYPE_3__ git_rawobj ;
typedef int git_oid ;
struct TYPE_14__ {int type; int size; } ;
struct TYPE_17__ {TYPE_1__ cached; int buffer; } ;
typedef TYPE_4__ git_odb_object ;
typedef int git_odb ;


 int check_object_files (TYPE_2__*) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cmp_objects (TYPE_3__*,TYPE_3__*) ;
 int git_odb_free (int *) ;
 int git_odb_object_free (TYPE_4__*) ;
 int git_odb_open (int **,int ) ;
 int git_odb_read (TYPE_4__**,int *,int *) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int make_odb_dir () ;
 int odb_dir ;
 int remove_object_files (TYPE_2__*) ;
 int streaming_write (int *,int *,TYPE_3__*) ;

void test_body(object_data *d, git_rawobj *o)
{
   git_odb *db;
   git_oid id1, id2;
   git_odb_object *obj;
   git_rawobj tmp;

   make_odb_dir();
   cl_git_pass(git_odb_open(&db, odb_dir));
   cl_git_pass(git_oid_fromstr(&id1, d->id));

   streaming_write(&id2, db, o);
   cl_assert(git_oid_cmp(&id1, &id2) == 0);
   check_object_files(d);

   cl_git_pass(git_odb_read(&obj, db, &id1));

   tmp.data = obj->buffer;
   tmp.len = obj->cached.size;
   tmp.type = obj->cached.type;

   cmp_objects(&tmp, o);

   git_odb_object_free(obj);
   git_odb_free(db);
   remove_object_files(d);
}
