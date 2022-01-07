
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct node {int host; } ;
struct TYPE_5__ {int generation; struct connection* conn; } ;
struct TYPE_6__ {TYPE_1__ conn; } ;
struct relative {int type; size_t link_color; struct node node; TYPE_2__ conn; struct relative* prev; struct relative* next; } ;
struct connection {int generation; } ;
struct TYPE_7__ {int total_parents; int * total_links_color; } ;
struct TYPE_8__ {TYPE_3__ structured; } ;


 struct relative RELATIVES ;
 TYPE_4__* STATS ;
 int host ;
 size_t link_color (int ,int ) ;
 struct relative* zmalloc (int) ;

void add_parent (struct node child, struct connection *c) {
  struct relative *cur = zmalloc (sizeof (struct relative));
  cur->next = RELATIVES.next;
  cur->prev = &RELATIVES;
  cur->prev->next = cur;
  cur->next->prev = cur;
  cur->node = child;
  cur->type = 1;
  cur->conn.conn.conn = c;
  cur->conn.conn.generation = c->generation;
  cur->link_color = link_color (cur->node.host, host);
  STATS->structured.total_links_color[cur->link_color]++;
  STATS->structured.total_parents ++;
}
