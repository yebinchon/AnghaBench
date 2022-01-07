
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int dummy; } ;
struct ref {int dummy; } ;
struct argv_array {int dummy; } ;


 struct ref* handshake (struct transport*,int,struct argv_array const*,int) ;

__attribute__((used)) static struct ref *get_refs_via_connect(struct transport *transport, int for_push,
     const struct argv_array *ref_prefixes)
{
 return handshake(transport, for_push, ref_prefixes, 1);
}
