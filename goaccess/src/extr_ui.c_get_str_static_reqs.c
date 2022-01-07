
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REQUESTS_STATIC ;
 int ht_get_size_datamap (int ) ;
 char* int2str (int ,int ) ;

__attribute__((used)) static char *
get_str_static_reqs (void)
{
  return int2str (ht_get_size_datamap (REQUESTS_STATIC), 0);
}
