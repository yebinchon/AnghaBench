
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_rename_dst {int dummy; } ;
struct diff_filespec {int dummy; } ;


 int find_rename_dst (struct diff_filespec*) ;
 struct diff_rename_dst* rename_dst ;

__attribute__((used)) static struct diff_rename_dst *locate_rename_dst(struct diff_filespec *two)
{
 int ofs = find_rename_dst(two);
 return ofs < 0 ? ((void*)0) : &rename_dst[ofs];
}
