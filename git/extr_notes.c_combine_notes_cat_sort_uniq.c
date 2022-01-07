
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {int len; int buf; } ;
typedef struct object_id const object_id ;


 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_DUP ;
 int blob_type ;
 scalar_t__ for_each_string_list (struct string_list*,int ,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ string_list_add_note_lines (struct string_list*,struct object_id const*) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_join_lines_helper ;
 int string_list_remove_duplicates (struct string_list*,int ) ;
 int string_list_remove_empty_items (struct string_list*,int ) ;
 int string_list_sort (struct string_list*) ;
 int write_object_file (int ,int ,int ,struct object_id const*) ;

int combine_notes_cat_sort_uniq(struct object_id *cur_oid,
    const struct object_id *new_oid)
{
 struct string_list sort_uniq_list = STRING_LIST_INIT_DUP;
 struct strbuf buf = STRBUF_INIT;
 int ret = 1;


 if (string_list_add_note_lines(&sort_uniq_list, cur_oid))
  goto out;
 if (string_list_add_note_lines(&sort_uniq_list, new_oid))
  goto out;
 string_list_remove_empty_items(&sort_uniq_list, 0);
 string_list_sort(&sort_uniq_list);
 string_list_remove_duplicates(&sort_uniq_list, 0);


 if (for_each_string_list(&sort_uniq_list,
     string_list_join_lines_helper, &buf))
  goto out;

 ret = write_object_file(buf.buf, buf.len, blob_type, cur_oid);

out:
 strbuf_release(&buf);
 string_list_clear(&sort_uniq_list, 0);
 return ret;
}
