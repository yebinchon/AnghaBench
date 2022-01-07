
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int each_loose_subdir_fn ;
typedef int each_loose_object_fn ;
typedef int each_loose_cruft_fn ;


 struct strbuf STRBUF_INIT ;
 int for_each_loose_file_in_objdir_buf (struct strbuf*,int ,int ,int ,void*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

int for_each_loose_file_in_objdir(const char *path,
      each_loose_object_fn obj_cb,
      each_loose_cruft_fn cruft_cb,
      each_loose_subdir_fn subdir_cb,
      void *data)
{
 struct strbuf buf = STRBUF_INIT;
 int r;

 strbuf_addstr(&buf, path);
 r = for_each_loose_file_in_objdir_buf(&buf, obj_cb, cruft_cb,
           subdir_cb, data);
 strbuf_release(&buf);

 return r;
}
