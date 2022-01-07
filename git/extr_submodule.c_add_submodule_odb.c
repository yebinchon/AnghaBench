
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int add_to_alternates_memory (int ) ;
 int is_directory (int ) ;
 int strbuf_git_path_submodule (struct strbuf*,char const*,char*) ;
 int strbuf_release (struct strbuf*) ;

int add_submodule_odb(const char *path)
{
 struct strbuf objects_directory = STRBUF_INIT;
 int ret = 0;

 ret = strbuf_git_path_submodule(&objects_directory, path, "objects/");
 if (ret)
  goto done;
 if (!is_directory(objects_directory.buf)) {
  ret = -1;
  goto done;
 }
 add_to_alternates_memory(objects_directory.buf);
done:
 strbuf_release(&objects_directory);
 return ret;
}
