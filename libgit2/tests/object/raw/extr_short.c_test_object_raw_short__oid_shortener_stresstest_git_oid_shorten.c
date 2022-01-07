
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid_shorten ;


 size_t MAX_OIDS ;
 int cl_assert (int) ;
 int cl_assert_equal_b (int,int) ;
 int free_oids (size_t,char**) ;
 int git_oid_shorten_free (int *) ;
 int * git_oid_shorten_new (int ) ;
 int insert_sequential_oids (char***,int *,size_t,size_t) ;
 scalar_t__ memcmp (char*,char*,int) ;

void test_object_raw_short__oid_shortener_stresstest_git_oid_shorten(void)
{


 git_oid_shorten *os;
 size_t i, j;
 int min_len = 0, found_collision;
 char **oids;

 os = git_oid_shorten_new(0);
 cl_assert(os != ((void*)0));




 min_len = insert_sequential_oids(&oids, os, 1000, 1000);
 cl_assert(min_len > 0);






 found_collision = 0;
 for (i = 0; i < 1000; ++i) {
  for (j = i + 1; j < 1000; ++j) {
   if (memcmp(oids[i], oids[j], min_len - 1) == 0)
    found_collision = 1;
  }
 }
 cl_assert_equal_b(1, found_collision);






 found_collision = 0;
 for (i = 0; i < 1000; ++i) {
  for (j = i + 1; j < 1000; ++j) {
   if (memcmp(oids[i], oids[j], min_len) == 0)
    found_collision = 1;
  }
 }
 cl_assert_equal_b(0, found_collision);


 free_oids(1000, oids);
 git_oid_shorten_free(os);


}
