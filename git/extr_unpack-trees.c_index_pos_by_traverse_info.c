
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unpack_trees_options {TYPE_2__* src_index; } ;
struct traverse_info {struct unpack_trees_options* data; } ;
struct strbuf {int buf; int len; } ;
struct name_entry {int pathlen; int path; } ;
struct TYPE_4__ {TYPE_1__** cache; } ;
struct TYPE_3__ {int name; } ;


 int BUG (char*) ;
 struct strbuf STRBUF_INIT ;
 int index_name_pos (TYPE_2__*,int ,int ) ;
 scalar_t__ starts_with (int ,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_make_traverse_path (struct strbuf*,struct traverse_info*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int index_pos_by_traverse_info(struct name_entry *names,
          struct traverse_info *info)
{
 struct unpack_trees_options *o = info->data;
 struct strbuf name = STRBUF_INIT;
 int pos;

 strbuf_make_traverse_path(&name, info, names->path, names->pathlen);
 strbuf_addch(&name, '/');
 pos = index_name_pos(o->src_index, name.buf, name.len);
 if (pos >= 0)
  BUG("This is a directory and should not exist in index");
 pos = -pos - 1;
 if (!starts_with(o->src_index->cache[pos]->name, name.buf) ||
     (pos > 0 && starts_with(o->src_index->cache[pos-1]->name, name.buf)))
  BUG("pos must point at the first entry in this directory");
 strbuf_release(&name);
 return pos;
}
