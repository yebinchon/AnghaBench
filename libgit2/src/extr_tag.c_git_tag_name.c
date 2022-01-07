
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* tag_name; } ;
typedef TYPE_1__ git_tag ;


 int assert (TYPE_1__ const*) ;

const char *git_tag_name(const git_tag *t)
{
 assert(t);
 return t->tag_name;
}
