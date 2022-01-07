
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_entry {int dummy; } ;
struct branch {int oid; } ;
typedef int b ;
struct TYPE_2__ {int buf; } ;


 int _ (char*) ;
 int assert (struct object_entry*) ;
 TYPE_1__ command_buf ;
 int die (int ,int ) ;
 struct object_entry* find_object (int *) ;
 int insert_mark (int ,struct object_entry*) ;
 int memset (struct branch*,int ,int) ;
 int next_mark ;
 int parse_mark () ;
 int parse_objectish_with_prefix (struct branch*,char*) ;
 int read_next_command () ;
 int skip_optional_lf () ;

__attribute__((used)) static void parse_alias(void)
{
 struct object_entry *e;
 struct branch b;

 skip_optional_lf();
 read_next_command();


 parse_mark();
 if (!next_mark)
  die(_("Expected 'mark' command, got %s"), command_buf.buf);


 memset(&b, 0, sizeof(b));
 if (!parse_objectish_with_prefix(&b, "to "))
  die(_("Expected 'to' command, got %s"), command_buf.buf);
 e = find_object(&b.oid);
 assert(e);
 insert_mark(next_mark, e);
}
