
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int id; } ;
typedef TYPE_2__ object_data ;
struct TYPE_13__ {int type; int len; int data; } ;
typedef TYPE_3__ git_rawobj ;
typedef int git_oid ;
struct TYPE_11__ {int type; int size; } ;
struct TYPE_14__ {TYPE_1__ cached; int buffer; } ;
typedef TYPE_4__ git_odb_object ;
typedef int git_odb ;


 int cl_git_pass (int ) ;
 int cmp_objects (TYPE_3__*,TYPE_2__*) ;
 int git_odb_free (int *) ;
 int git_odb_object_free (TYPE_4__*) ;
 int git_odb_open (int **,char*) ;
 int git_odb_read (TYPE_4__**,int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int write_object_files (TYPE_2__*) ;

__attribute__((used)) static void test_read_object(object_data *data)
{
    git_oid id;
    git_odb_object *obj;
 git_odb *odb;
 git_rawobj tmp;

    write_object_files(data);

    cl_git_pass(git_odb_open(&odb, "test-objects"));
    cl_git_pass(git_oid_fromstr(&id, data->id));
    cl_git_pass(git_odb_read(&obj, odb, &id));

 tmp.data = obj->buffer;
 tmp.len = obj->cached.size;
 tmp.type = obj->cached.type;

    cmp_objects(&tmp, data);

    git_odb_object_free(obj);
 git_odb_free(odb);
}
