
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atmtcp_create (int,int,int *) ;

__attribute__((used)) static int atmtcp_create_persistent(int itf)
{
 return atmtcp_create(itf,1,((void*)0));
}
