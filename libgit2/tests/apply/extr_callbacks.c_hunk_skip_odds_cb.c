
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff_hunk ;


 int GIT_UNUSED (int const*) ;

__attribute__((used)) static int hunk_skip_odds_cb(const git_diff_hunk *hunk, void *payload)
{
 int *count = (int *)payload;
 GIT_UNUSED(hunk);

 return ((*count)++ % 2 == 1);
}
