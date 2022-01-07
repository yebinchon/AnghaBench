
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct newsr_gather_extra {int request_tag; } ;


 int vkprintf (int,char*,int) ;

int newsr_use_preget_query (void *extra) {
  vkprintf (4, "newsr: request_tag = %d\n", ((struct newsr_gather_extra *)extra)->request_tag);
  return ((struct newsr_gather_extra *)extra)->request_tag;
}
