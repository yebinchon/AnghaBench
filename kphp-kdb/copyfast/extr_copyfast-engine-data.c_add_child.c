
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct node {int host; int port; } ;
struct TYPE_7__ {int targ; } ;
struct TYPE_8__ {TYPE_1__ targ; } ;
struct relative {size_t link_color; struct node node; TYPE_2__ conn; scalar_t__ type; struct relative* prev; struct relative* next; } ;
struct in_addr {int dummy; } ;
struct TYPE_9__ {int total_children; int * total_links_color; } ;
struct TYPE_11__ {TYPE_3__ structured; } ;
struct TYPE_10__ {int port; struct in_addr target; } ;


 struct relative RELATIVES ;
 TYPE_6__* STATS ;
 int create_target (TYPE_4__*,int ) ;
 TYPE_4__ default_child ;
 int host ;
 size_t link_color (int ,int ) ;
 int ntohl (int ) ;
 struct relative* zmalloc (int) ;

void add_child (struct node child) {
  struct relative *cur = zmalloc (sizeof (struct relative));
  cur->next = RELATIVES.next;
  cur->prev = &RELATIVES;
  cur->prev->next = cur;
  cur->next->prev = cur;
  cur->node = child;
  cur->type = 0;
  int x = ntohl (child.host);
  default_child.target = *(struct in_addr *)&x;
  default_child.port = child.port;
  cur->conn.targ.targ = create_target (&default_child, 0);
  cur->link_color = link_color (cur->node.host, host);
  STATS->structured.total_links_color[cur->link_color]++;
  STATS->structured.total_children ++;
}
