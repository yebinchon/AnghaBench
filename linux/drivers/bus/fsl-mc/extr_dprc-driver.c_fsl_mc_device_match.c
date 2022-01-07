
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_mc_obj_desc {scalar_t__ id; int type; } ;
struct TYPE_2__ {scalar_t__ id; int type; } ;
struct fsl_mc_device {TYPE_1__ obj_desc; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool fsl_mc_device_match(struct fsl_mc_device *mc_dev,
    struct fsl_mc_obj_desc *obj_desc)
{
 return mc_dev->obj_desc.id == obj_desc->id &&
        strcmp(mc_dev->obj_desc.type, obj_desc->type) == 0;

}
