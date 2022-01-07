
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 int PS3_LPAR_ID_CURRENT ;
 int make_field (char*,int ) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,int ,int ,unsigned int*,int *) ;

int ps3_repository_read_vuart_av_port(unsigned int *port)
{
 int result;
 u64 v1 = 0;

 result = read_node(PS3_LPAR_ID_CURRENT,
  make_first_field("bi", 0),
  make_field("vir_uart", 0),
  make_field("port", 0),
  make_field("avset", 0),
  &v1, ((void*)0));
 *port = v1;
 return result;
}
