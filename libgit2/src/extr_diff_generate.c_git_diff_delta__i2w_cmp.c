
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; } ;
typedef TYPE_1__ git_diff_delta ;


 int diff_delta__i2w_path (TYPE_1__ const*) ;
 int strcmp (int ,int ) ;

int git_diff_delta__i2w_cmp(const void *a, const void *b)
{
 const git_diff_delta *da = a, *db = b;
 int val = strcmp(diff_delta__i2w_path(da), diff_delta__i2w_path(db));
 return val ? val : ((int)da->status - (int)db->status);
}
