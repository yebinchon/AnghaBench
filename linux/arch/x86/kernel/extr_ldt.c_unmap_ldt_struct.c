
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct ldt_struct {int dummy; } ;



__attribute__((used)) static void unmap_ldt_struct(struct mm_struct *mm, struct ldt_struct *ldt)
{
}
