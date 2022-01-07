
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ git_oid ;


 int cl_git_pass (int ) ;
 int git_oid_fromraw (TYPE_1__*,unsigned char*) ;
 int memcmp (int ,unsigned char*,int) ;

void test_object_raw_chars__build_valid_oid_from_raw_bytes(void)
{
 git_oid out;
 unsigned char exp[] = {
  0x16, 0xa6, 0x77, 0x70, 0xb7,
  0xd8, 0xd7, 0x23, 0x17, 0xc4,
  0xb7, 0x75, 0x21, 0x3c, 0x23,
  0xa8, 0xbd, 0x74, 0xf5, 0xe0,
 };
 git_oid_fromraw(&out, exp);
 cl_git_pass(memcmp(out.id, exp, sizeof(out.id)));
}
