
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int object; } ;


 int mark_object (int *,int *,void*) ;

__attribute__((used)) static void mark_commit(struct commit *c, void *data)
{
 mark_object(&c->object, ((void*)0), data);
}
