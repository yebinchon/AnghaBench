
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit {TYPE_1__* parents; } ;
struct TYPE_2__ {int next; } ;



__attribute__((used)) static int patch_id_defined(struct commit *commit)
{

 return !commit->parents || !commit->parents->next;
}
