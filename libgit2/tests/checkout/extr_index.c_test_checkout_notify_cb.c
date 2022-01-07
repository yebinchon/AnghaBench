
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct notify_data {int sha; int file; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_1__ git_diff_file ;
typedef int git_checkout_notify_t ;


 int GIT_CHECKOUT_NOTIFY_CONFLICT ;
 int GIT_UNUSED (TYPE_1__ const*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (int ,char const*) ;
 int git_oid_streq (int *,int ) ;

__attribute__((used)) static int test_checkout_notify_cb(
 git_checkout_notify_t why,
 const char *path,
 const git_diff_file *baseline,
 const git_diff_file *target,
 const git_diff_file *workdir,
 void *payload)
{
 struct notify_data *expectations = (struct notify_data *)payload;

 GIT_UNUSED(workdir);

 cl_assert_equal_i(GIT_CHECKOUT_NOTIFY_CONFLICT, why);
 cl_assert_equal_s(expectations->file, path);
 cl_assert_equal_i(0, git_oid_streq(&baseline->id, expectations->sha));
 cl_assert_equal_i(0, git_oid_streq(&target->id, expectations->sha));

 return 0;
}
