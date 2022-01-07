
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_negotiator {int data; int * known_common; } ;
struct commit {int dummy; } ;


 int SEEN ;
 int rev_list_push (int ,struct commit*,int ) ;

__attribute__((used)) static void add_tip(struct fetch_negotiator *n, struct commit *c)
{
 n->known_common = ((void*)0);
 rev_list_push(n->data, c, SEEN);
}
