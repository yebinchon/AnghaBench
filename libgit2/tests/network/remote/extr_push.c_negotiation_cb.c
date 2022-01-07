
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dst; int src; int dst_refname; int src_refname; } ;
typedef TYPE_1__ git_push_update ;


 int cl_assert_equal_i (int,size_t) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (int ,int ) ;

int negotiation_cb(const git_push_update **updates, size_t len, void *payload)
{
 const git_push_update *expected = payload;

 cl_assert_equal_i(1, len);
 cl_assert_equal_s(expected->src_refname, updates[0]->src_refname);
 cl_assert_equal_s(expected->dst_refname, updates[0]->dst_refname);
 cl_assert_equal_oid(&expected->src, &updates[0]->src);
 cl_assert_equal_oid(&expected->dst, &updates[0]->dst);

 return 0;
}
