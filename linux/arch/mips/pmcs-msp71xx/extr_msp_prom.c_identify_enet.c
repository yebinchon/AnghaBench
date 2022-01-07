
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENET_KEY ;
 char identify_enetfeature (int ,unsigned long) ;

char identify_enet(unsigned long interface_num)
{
 return identify_enetfeature(ENET_KEY, interface_num);
}
