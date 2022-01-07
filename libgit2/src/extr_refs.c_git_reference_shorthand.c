
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ git_reference ;


 char const* git_reference__shorthand (int ) ;

const char *git_reference_shorthand(const git_reference *ref)
{
 return git_reference__shorthand(ref->name);
}
