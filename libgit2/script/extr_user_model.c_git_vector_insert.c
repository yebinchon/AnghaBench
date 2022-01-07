
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; void** contents; } ;
typedef TYPE_1__ git_vector ;


 int __coverity_panic__ () ;
 void** realloc (void**,size_t) ;

int git_vector_insert(git_vector *v, void *element)
{
 if (!v)
  __coverity_panic__();

 v->contents = realloc(v->contents, ++v->length);
 if (!v->contents)
  __coverity_panic__();
 v->contents[v->length] = element;

 return 0;
}
