
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int BOTTOM ;
 int UNINTERESTING ;

__attribute__((used)) static inline int relevant_commit(struct commit *commit)
{
 return (commit->object.flags & (UNINTERESTING | BOTTOM)) != UNINTERESTING;
}
