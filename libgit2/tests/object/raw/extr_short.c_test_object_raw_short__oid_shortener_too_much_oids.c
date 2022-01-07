
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid_shorten ;


 scalar_t__ MAX_OIDS ;
 int cl_assert (int) ;
 int free_oids (scalar_t__,char**) ;
 int git_oid_shorten_free (int *) ;
 int * git_oid_shorten_new (int ) ;
 scalar_t__ insert_sequential_oids (char***,int *,scalar_t__,scalar_t__) ;

void test_object_raw_short__oid_shortener_too_much_oids(void)
{




 git_oid_shorten *os;
 char **oids;

 os = git_oid_shorten_new(0);
 cl_assert(os != ((void*)0));

 cl_assert(insert_sequential_oids(&oids, os, 24556, 24556 - 1) < 0);

 free_oids(24556, oids);
 git_oid_shorten_free(os);


}
