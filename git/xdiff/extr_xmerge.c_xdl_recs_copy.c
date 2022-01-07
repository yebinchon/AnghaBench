
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdfenv_t ;


 int xdl_recs_copy_0 (int ,int *,int,int,int,int,char*) ;

__attribute__((used)) static int xdl_recs_copy(xdfenv_t *xe, int i, int count, int needs_cr, int add_nl, char *dest)
{
 return xdl_recs_copy_0(0, xe, i, count, needs_cr, add_nl, dest);
}
