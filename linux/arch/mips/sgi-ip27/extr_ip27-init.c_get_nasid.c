
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nasid_t ;


 int LOCAL_HUB_L (int ) ;
 int NI_STATUS_REV_ID ;
 int NSRI_NODEID_MASK ;
 int NSRI_NODEID_SHFT ;

nasid_t
get_nasid(void)
{
 return (nasid_t)((LOCAL_HUB_L(NI_STATUS_REV_ID) & NSRI_NODEID_MASK)
    >> NSRI_NODEID_SHFT);
}
