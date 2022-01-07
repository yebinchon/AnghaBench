
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_info {int res_susp_fen; int res_susp_nod; int res_susp; int res_role; } ;
struct drbd_resource {int susp_fen; int susp_nod; int susp; } ;


 int conn_highest_role (int ) ;
 int first_connection (struct drbd_resource*) ;

__attribute__((used)) static void resource_to_info(struct resource_info *info,
        struct drbd_resource *resource)
{
 info->res_role = conn_highest_role(first_connection(resource));
 info->res_susp = resource->susp;
 info->res_susp_nod = resource->susp_nod;
 info->res_susp_fen = resource->susp_fen;
}
