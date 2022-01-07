
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int buf; } ;


 int do_remove_scheduled_dirs (int) ;
 int longest_path_match (char const*,int,int ,int,int*) ;
 TYPE_1__ removal ;
 int strbuf_add (TYPE_1__*,char const*,int) ;

void schedule_dir_for_removal(const char *name, int len)
{
 int match_len, last_slash, i, previous_slash;

 match_len = last_slash = i =
  longest_path_match(name, len, removal.buf, removal.len,
       &previous_slash);

 while (i < len) {
  if (name[i] == '/')
   last_slash = i;
  i++;
 }






 if (match_len < last_slash && match_len < removal.len)
  do_remove_scheduled_dirs(match_len);




 if (match_len < last_slash)
  strbuf_add(&removal, &name[match_len], last_slash - match_len);
}
