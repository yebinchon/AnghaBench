
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_reference_t ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ git_reference ;


 int assert (TYPE_1__ const*) ;

git_reference_t git_reference_type(const git_reference *ref)
{
 assert(ref);
 return ref->type;
}
