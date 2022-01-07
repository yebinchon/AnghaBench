
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git__prefixcmp (char const*,char*) ;

__attribute__((used)) static bool is_per_worktree_ref(const char *ref_name)
{
 return git__prefixcmp(ref_name, "refs/") != 0 ||
     git__prefixcmp(ref_name, "refs/bisect/") == 0;
}
