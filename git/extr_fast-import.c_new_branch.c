
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* versions; } ;
struct branch {int pack_id; scalar_t__ active; scalar_t__ num_notes; TYPE_2__ branch_tree; struct branch* table_next_branch; int name; } ;
struct TYPE_3__ {void* mode; } ;


 int MAX_PACK_ID ;
 int REFNAME_ALLOW_ONELEVEL ;
 void* S_IFDIR ;
 int branch_count ;
 struct branch** branch_table ;
 unsigned int branch_table_sz ;
 scalar_t__ check_refname_format (char const*,int ) ;
 int die (char*,char const*) ;
 int fi_mem_pool ;
 unsigned int hc_str (char const*,int ) ;
 struct branch* lookup_branch (char const*) ;
 struct branch* mem_pool_calloc (int *,int,int) ;
 int pool_strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct branch *new_branch(const char *name)
{
 unsigned int hc = hc_str(name, strlen(name)) % branch_table_sz;
 struct branch *b = lookup_branch(name);

 if (b)
  die("Invalid attempt to create duplicate branch: %s", name);
 if (check_refname_format(name, REFNAME_ALLOW_ONELEVEL))
  die("Branch name doesn't conform to GIT standards: %s", name);

 b = mem_pool_calloc(&fi_mem_pool, 1, sizeof(struct branch));
 b->name = pool_strdup(name);
 b->table_next_branch = branch_table[hc];
 b->branch_tree.versions[0].mode = S_IFDIR;
 b->branch_tree.versions[1].mode = S_IFDIR;
 b->num_notes = 0;
 b->active = 0;
 b->pack_id = MAX_PACK_ID;
 branch_table[hc] = b;
 branch_count++;
 return b;
}
