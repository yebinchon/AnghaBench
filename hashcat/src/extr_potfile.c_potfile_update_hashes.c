
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* nodes; int * hashconfig; } ;
typedef TYPE_1__ pot_tree_entry_t ;
struct TYPE_9__ {struct TYPE_9__* next; int * hash_buf; } ;
typedef TYPE_2__ pot_hash_node_t ;
typedef int hashconfig_t ;
struct TYPE_10__ {int * hashconfig; } ;
typedef TYPE_3__ hashcat_ctx_t ;
typedef int hash_t ;


 int potfile_update_hash (TYPE_3__*,int *,char*,int) ;
 int sort_pot_tree_by_hash ;
 scalar_t__ tfind (TYPE_1__*,void**,int ) ;

void potfile_update_hashes (hashcat_ctx_t *hashcat_ctx, hash_t *hash_buf, char *line_pw_buf, int line_pw_len, pot_tree_entry_t *tree)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;



  pot_hash_node_t search_node;

  search_node.hash_buf = hash_buf;
  search_node.next = ((void*)0);



  pot_tree_entry_t search_entry;

  search_entry.nodes = &search_node;
  search_entry.hashconfig = hashconfig;



  void **found = (void **) tfind (&search_entry, (void **) &tree, sort_pot_tree_by_hash);

  if (found)
  {
    pot_tree_entry_t *found_entry = (pot_tree_entry_t *) *found;

    pot_hash_node_t *node = found_entry->nodes;

    while (node)
    {
      potfile_update_hash (hashcat_ctx, node->hash_buf, line_pw_buf, line_pw_len);

      node = node->next;
    }
  }
}
