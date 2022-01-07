
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int children; } ;
struct commit_list {int next; struct commit* item; } ;
struct commit {int object; } ;


 int add_decoration (int *,int *,struct commit_list*) ;
 struct commit_list* xcalloc (int,int) ;

__attribute__((used)) static void add_child(struct rev_info *revs, struct commit *parent, struct commit *child)
{
 struct commit_list *l = xcalloc(1, sizeof(*l));

 l->item = child;
 l->next = add_decoration(&revs->children, &parent->object, l);
}
