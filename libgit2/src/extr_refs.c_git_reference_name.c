
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; } ;
typedef TYPE_1__ git_reference ;


 int assert (TYPE_1__ const*) ;

const char *git_reference_name(const git_reference *ref)
{
 assert(ref);
 return ref->name;
}
