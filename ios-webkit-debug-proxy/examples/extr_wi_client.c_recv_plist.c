
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wi_t ;
typedef int wi_status ;
typedef int uint32_t ;
typedef int plist_t ;


 int WI_SUCCESS ;
 int free (char*) ;
 int plist_to_xml (int const,char**,int *) ;
 int puts (char*) ;

wi_status recv_plist(wi_t wi, const plist_t rpc_dict) {
  char *xml = ((void*)0);
  uint32_t length = 0;
  plist_to_xml(rpc_dict, &xml, &length);
  puts(xml);
  free(xml);
  return WI_SUCCESS;
}
