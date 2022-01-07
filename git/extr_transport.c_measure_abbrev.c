
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int DEFAULT_ABBREV ;
 int GIT_MAX_HEXSZ ;
 int find_unique_abbrev_r (char*,struct object_id const*,int ) ;

__attribute__((used)) static int measure_abbrev(const struct object_id *oid, int sofar)
{
 char hex[GIT_MAX_HEXSZ + 1];
 int w = find_unique_abbrev_r(hex, oid, DEFAULT_ABBREV);

 return (w < sofar) ? sofar : w;
}
