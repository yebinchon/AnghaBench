
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devres {void* data; } ;
typedef int gfp_t ;
typedef int dr_release_t ;


 int __GFP_ZERO ;
 struct devres* alloc_dr (int ,size_t,int,int) ;
 scalar_t__ unlikely (int) ;

void * devres_alloc_node(dr_release_t release, size_t size, gfp_t gfp, int nid)
{
 struct devres *dr;

 dr = alloc_dr(release, size, gfp | __GFP_ZERO, nid);
 if (unlikely(!dr))
  return ((void*)0);
 return dr->data;
}
