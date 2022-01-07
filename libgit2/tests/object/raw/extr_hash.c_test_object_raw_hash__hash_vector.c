
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_3__ {int len; void* data; } ;
typedef TYPE_1__ git_buf_vec ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_hash_vec (int *,TYPE_1__*,int) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int hello_id ;
 void* hello_text ;
 int strlen (void*) ;

void test_object_raw_hash__hash_vector(void)
{
 git_oid id1, id2;
 git_buf_vec vec[2];

 cl_git_pass(git_oid_fromstr(&id1, hello_id));

 vec[0].data = hello_text;
 vec[0].len = 4;
 vec[1].data = hello_text+4;
 vec[1].len = strlen(hello_text)-4;

 git_hash_vec(&id2, vec, 2);

 cl_assert(git_oid_cmp(&id1, &id2) == 0);
}
