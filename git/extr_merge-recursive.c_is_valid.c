
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {scalar_t__ mode; int oid; } ;


 int is_null_oid (int *) ;

__attribute__((used)) static int is_valid(const struct diff_filespec *dfs)
{
 return dfs->mode != 0 && !is_null_oid(&dfs->oid);
}
