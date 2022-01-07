
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* ref_name; char const* id_str; } ;
typedef TYPE_1__ git_annotated_commit ;


 scalar_t__ git__strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *rebase_onto_name(const git_annotated_commit *onto)
{
 if (onto->ref_name && git__strncmp(onto->ref_name, "refs/heads/", 11) == 0)
  return onto->ref_name + 11;
 else if (onto->ref_name)
  return onto->ref_name;
 else
  return onto->id_str;
}
