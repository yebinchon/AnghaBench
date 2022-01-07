
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_packbuilder ;


 int PREPARE_PACK ;
 int write_pack (int *,int (*) (void*,size_t,void*),void*) ;

int git_packbuilder_foreach(git_packbuilder *pb, int (*cb)(void *buf, size_t size, void *payload), void *payload)
{
 PREPARE_PACK;
 return write_pack(pb, cb, payload);
}
