
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GSLList ;


 int * list_find (int *,int ,int*) ;
 int ws_find_client_sock_in_list ;

__attribute__((used)) static GSLList *
ws_get_list_node_from_list (int listener, GSLList ** colist)
{
  GSLList *match = ((void*)0);


  if (!(match = list_find (*colist, ws_find_client_sock_in_list, &listener)))
    return ((void*)0);
  return match;
}
