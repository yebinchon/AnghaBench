
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fetch_fsck_objects ;
 int fetch_pack_config_cb ;
 int fetch_unpack_limit ;
 int git_config (int ,int *) ;
 int git_config_get_bool (char*,int *) ;
 int git_config_get_int (char*,int *) ;
 int prefer_ofs_delta ;
 int transfer_fsck_objects ;
 int transfer_unpack_limit ;

__attribute__((used)) static void fetch_pack_config(void)
{
 git_config_get_int("fetch.unpacklimit", &fetch_unpack_limit);
 git_config_get_int("transfer.unpacklimit", &transfer_unpack_limit);
 git_config_get_bool("repack.usedeltabaseoffset", &prefer_ofs_delta);
 git_config_get_bool("fetch.fsckobjects", &fetch_fsck_objects);
 git_config_get_bool("transfer.fsckobjects", &transfer_fsck_objects);

 git_config(fetch_pack_config_cb, ((void*)0));
}
