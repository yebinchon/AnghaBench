
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;
typedef enum nfit_uuids { ____Placeholder_nfit_uuids } nfit_uuids ;


 int const* nfit_uuid ;

const guid_t *to_nfit_uuid(enum nfit_uuids id)
{
 return &nfit_uuid[id];
}
