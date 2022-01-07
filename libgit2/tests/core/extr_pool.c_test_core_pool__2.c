
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int oid_hex ;
struct TYPE_6__ {int page_size; } ;
typedef TYPE_1__ git_pool ;
typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_pool__open_pages (TYPE_1__*) ;
 int git_pool_clear (TYPE_1__*) ;
 int git_pool_init (TYPE_1__*,int) ;
 int * git_pool_malloc (TYPE_1__*,int) ;
 int memset (char*,int ,int) ;
 char* to_hex ;

void test_core_pool__2(void)
{
 git_pool p;
 char oid_hex[GIT_OID_HEXSZ];
 git_oid *oid;
 int i, j;

 memset(oid_hex, '0', sizeof(oid_hex));

 git_pool_init(&p, sizeof(git_oid));
 p.page_size = 4000;

 for (i = 1000; i < 10000; i++) {
  oid = git_pool_malloc(&p, 1);
  cl_assert(oid != ((void*)0));

  for (j = 0; j < 8; j++)
   oid_hex[j] = to_hex[(i >> (4 * j)) & 0x0f];
  cl_git_pass(git_oid_fromstr(oid, oid_hex));
 }



 cl_assert_equal_i(sizeof(void *) == 8 ? 55 : 45, git_pool__open_pages(&p));

 git_pool_clear(&p);
}
