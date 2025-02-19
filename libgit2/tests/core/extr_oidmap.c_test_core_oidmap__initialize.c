
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {unsigned char* id; } ;
struct TYPE_5__ {int extra; TYPE_1__ oid; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int GIT_OID_RAWSZ ;
 int cl_git_pass (int ) ;
 int g_map ;
 int git_oidmap_new (int *) ;
 TYPE_2__* test_oids ;

void test_core_oidmap__initialize(void)
{
 uint32_t i, j;
 for (i = 0; i < ARRAY_SIZE(test_oids); ++i) {
  uint32_t segment = i / 8;
  int modi = i - (segment * 8);

  test_oids[i].extra = i;

  for (j = 0; j < GIT_OID_RAWSZ / 4; ++j) {
   test_oids[i].oid.id[j * 4 ] = (unsigned char)modi;
   test_oids[i].oid.id[j * 4 + 1] = (unsigned char)(modi >> 8);
   test_oids[i].oid.id[j * 4 + 2] = (unsigned char)(modi >> 16);
   test_oids[i].oid.id[j * 4 + 3] = (unsigned char)(modi >> 24);
  }

  test_oids[i].oid.id[ 8] = (unsigned char)i;
  test_oids[i].oid.id[ 9] = (unsigned char)(i >> 8);
  test_oids[i].oid.id[10] = (unsigned char)(i >> 16);
  test_oids[i].oid.id[11] = (unsigned char)(i >> 24);
 }

 cl_git_pass(git_oidmap_new(&g_map));
}
