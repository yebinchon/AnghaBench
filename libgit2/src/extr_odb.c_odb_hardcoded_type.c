
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; int member_10; int member_11; int member_12; int member_13; int member_14; int member_15; int member_16; int member_17; int member_18; int member_19; } ;
struct TYPE_7__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;
typedef int git_object_t ;


 int GIT_OBJECT_INVALID ;
 int GIT_OBJECT_TREE ;
 int git_oid_cmp (TYPE_2__ const*,TYPE_2__*) ;

__attribute__((used)) static git_object_t odb_hardcoded_type(const git_oid *id)
{
 static git_oid empty_tree = {{ 0x4b, 0x82, 0x5d, 0xc6, 0x42, 0xcb, 0x6e, 0xb9, 0xa0, 0x60,
        0xe5, 0x4b, 0xf8, 0xd6, 0x92, 0x88, 0xfb, 0xee, 0x49, 0x04 }};

 if (!git_oid_cmp(id, &empty_tree))
  return GIT_OBJECT_TREE;

 return GIT_OBJECT_INVALID;
}
