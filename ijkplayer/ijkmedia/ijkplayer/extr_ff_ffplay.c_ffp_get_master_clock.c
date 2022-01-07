
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VideoState ;


 double get_master_clock (int *) ;

double ffp_get_master_clock(VideoState *is)
{
    return get_master_clock(is);
}
