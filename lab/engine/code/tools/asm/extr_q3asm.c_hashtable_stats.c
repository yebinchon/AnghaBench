
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buckets; TYPE_2__** table; } ;
typedef TYPE_1__ hashtable_t ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_2__ hashchain_t ;


 int report (char*,...) ;

__attribute__((used)) static void hashtable_stats (hashtable_t *H)
{
  int len, empties, longest, nodes;
  int i;
  float meanlen;
  hashchain_t *hc;

  report("Stats for hashtable %08X", H);
  empties = 0;
  longest = 0;
  nodes = 0;
  for (i = 0; i < H->buckets; i++)
    {
      if (H->table[i] == 0)
        { empties++; continue; }
      for (hc = H->table[i], len = 0; hc; hc = hc->next, len++);
      if (len > longest) { longest = len; }
      nodes += len;
    }
  meanlen = (float)(nodes) / (H->buckets - empties);
  report(", %d buckets, %d nodes", H->buckets, nodes);
  report("\n");
  report(" Longest chain: %d, empty chains: %d, mean non-empty: %f", longest, empties, meanlen);

  report("\n");
}
