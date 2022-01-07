
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* tagger; } ;
typedef TYPE_1__ git_tag ;
typedef int git_signature ;



const git_signature *git_tag_tagger(const git_tag *t)
{
 return t->tagger;
}
