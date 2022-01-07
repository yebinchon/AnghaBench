
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct fetch_negotiator {int data; int * add_tip; int * known_common; } ;


 struct object_id const* get_rev (int ) ;

__attribute__((used)) static const struct object_id *next(struct fetch_negotiator *n)
{
 n->known_common = ((void*)0);
 n->add_tip = ((void*)0);
 return get_rev(n->data);
}
