
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_4__ {int ptr; int size; int member_0; } ;
typedef TYPE_1__ git_buf ;


 int GIT_OBJECT_ANY ;
 int _repo ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_object_short_id (TYPE_1__*,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_object_shortid__select(void)
{
 git_oid full;
 git_object *obj;
 git_buf shorty = {0};

 git_oid_fromstr(&full, "ce013625030ba8dba906f756967f9e9ca394464a");
 cl_git_pass(git_object_lookup(&obj, _repo, &full, GIT_OBJECT_ANY));
 cl_git_pass(git_object_short_id(&shorty, obj));
 cl_assert_equal_i(7, shorty.size);
 cl_assert_equal_s("ce01362", shorty.ptr);
 git_object_free(obj);

 git_oid_fromstr(&full, "038d718da6a1ebbc6a7780a96ed75a70cc2ad6e2");
 cl_git_pass(git_object_lookup(&obj, _repo, &full, GIT_OBJECT_ANY));
 cl_git_pass(git_object_short_id(&shorty, obj));
 cl_assert_equal_i(7, shorty.size);
 cl_assert_equal_s("038d718", shorty.ptr);
 git_object_free(obj);

 git_oid_fromstr(&full, "dea509d097ce692e167dfc6a48a7a280cc5e877e");
 cl_git_pass(git_object_lookup(&obj, _repo, &full, GIT_OBJECT_ANY));
 cl_git_pass(git_object_short_id(&shorty, obj));
 cl_assert_equal_i(9, shorty.size);
 cl_assert_equal_s("dea509d09", shorty.ptr);
 git_object_free(obj);

 git_oid_fromstr(&full, "dea509d0b3cb8ee0650f6ca210bc83f4678851ba");
 cl_git_pass(git_object_lookup(&obj, _repo, &full, GIT_OBJECT_ANY));
 cl_git_pass(git_object_short_id(&shorty, obj));
 cl_assert_equal_i(9, shorty.size);
 cl_assert_equal_s("dea509d0b", shorty.ptr);
 git_object_free(obj);

 git_buf_dispose(&shorty);
}
