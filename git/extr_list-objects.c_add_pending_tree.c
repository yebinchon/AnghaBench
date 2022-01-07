
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int object; } ;
struct rev_info {int dummy; } ;


 int add_pending_object (struct rev_info*,int *,char*) ;

__attribute__((used)) static void add_pending_tree(struct rev_info *revs, struct tree *tree)
{
 add_pending_object(revs, &tree->object, "");
}
