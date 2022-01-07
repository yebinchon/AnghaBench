
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int DEFAULT_ABBREV ;
 char const* find_unique_abbrev (int *,int ) ;

__attribute__((used)) static const char *short_commit_name(struct commit *commit)
{
 return find_unique_abbrev(&commit->object.oid, DEFAULT_ABBREV);
}
