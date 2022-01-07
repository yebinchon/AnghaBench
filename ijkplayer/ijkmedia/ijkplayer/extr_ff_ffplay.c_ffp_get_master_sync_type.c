
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VideoState ;


 int get_master_sync_type (int *) ;

int ffp_get_master_sync_type(VideoState *is)
{
    return get_master_sync_type(is);
}
