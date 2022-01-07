
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_4__ {int * empty_tree; } ;


 char const* oid_to_hex (int *) ;
 TYPE_2__* the_hash_algo ;

__attribute__((used)) static const char *merge_argument(struct commit *commit)
{
 return oid_to_hex(commit ? &commit->object.oid : the_hash_algo->empty_tree);
}
