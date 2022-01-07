
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int free_pack_info () ;
 int get_object_directory () ;
 int init_pack_info (char*,int) ;
 char* mkpathdup (char*,int ) ;
 int update_info_file (char*,int ,int) ;
 int write_pack_info_file ;

__attribute__((used)) static int update_info_packs(int force)
{
 char *infofile = mkpathdup("%s/info/packs", get_object_directory());
 int ret;

 init_pack_info(infofile, force);
 ret = update_info_file(infofile, write_pack_info_file, force);
 free_pack_info();
 free(infofile);
 return ret;
}
