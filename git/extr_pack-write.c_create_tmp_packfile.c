
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct hashfile {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 struct hashfile* hashfd (int,char*) ;
 int odb_mkstemp (struct strbuf*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;

struct hashfile *create_tmp_packfile(char **pack_tmp_name)
{
 struct strbuf tmpname = STRBUF_INIT;
 int fd;

 fd = odb_mkstemp(&tmpname, "pack/tmp_pack_XXXXXX");
 *pack_tmp_name = strbuf_detach(&tmpname, ((void*)0));
 return hashfd(fd, *pack_tmp_name);
}
