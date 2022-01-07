
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct dprc_attributes {int icid; } ;


 int get_dprc_attr (struct fsl_mc_io*,int,struct dprc_attributes*) ;

__attribute__((used)) static int get_dprc_icid(struct fsl_mc_io *mc_io,
    int container_id, u16 *icid)
{
 struct dprc_attributes attr;
 int error;

 error = get_dprc_attr(mc_io, container_id, &attr);
 if (error == 0)
  *icid = attr.icid;

 return error;
}
