
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int dlen; int id; } ;
typedef TYPE_1__ object_data ;
typedef int git_oid ;
typedef int git_odb ;
typedef int git_object_t ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_sz (int ,size_t) ;
 int cl_git_pass (int ) ;
 int git_object_string2type (int ) ;
 int git_odb_free (int *) ;
 int git_odb_open (int **,char*) ;
 int git_odb_read_header (size_t*,int *,int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int write_object_files (TYPE_1__*) ;

__attribute__((used)) static void test_read_header(object_data *data)
{
 git_oid id;
 git_odb *odb;
 size_t len;
 git_object_t type;

 write_object_files(data);

 cl_git_pass(git_odb_open(&odb, "test-objects"));
 cl_git_pass(git_oid_fromstr(&id, data->id));
 cl_git_pass(git_odb_read_header(&len, &type, odb, &id));

 cl_assert_equal_sz(data->dlen, len);
 cl_assert_equal_i(git_object_string2type(data->type), type);

 git_odb_free(odb);
}
