
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_3__ {int const oid; } ;
typedef TYPE_1__ git_filter_source ;


 scalar_t__ git_oid_is_zero (int const*) ;

const git_oid *git_filter_source_id(const git_filter_source *src)
{
 return git_oid_is_zero(&src->oid) ? ((void*)0) : &src->oid;
}
