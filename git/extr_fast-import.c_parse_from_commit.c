
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* versions; } ;
struct branch {TYPE_2__ branch_tree; int oid; } ;
struct TYPE_6__ {int hexsz; } ;
struct TYPE_4__ {int oid; } ;


 int die (char*,int ) ;
 scalar_t__ get_oid_hex (char*,int *) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int oid_to_hex (int *) ;
 int oidcpy (int *,int *) ;
 TYPE_3__* the_hash_algo ;

__attribute__((used)) static void parse_from_commit(struct branch *b, char *buf, unsigned long size)
{
 if (!buf || size < the_hash_algo->hexsz + 6)
  die("Not a valid commit: %s", oid_to_hex(&b->oid));
 if (memcmp("tree ", buf, 5)
  || get_oid_hex(buf + 5, &b->branch_tree.versions[1].oid))
  die("The commit %s is corrupt", oid_to_hex(&b->oid));
 oidcpy(&b->branch_tree.versions[0].oid,
        &b->branch_tree.versions[1].oid);
}
