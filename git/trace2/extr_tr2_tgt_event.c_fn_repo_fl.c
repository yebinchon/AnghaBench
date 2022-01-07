
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int worktree; } ;
struct json_writer {int json; } ;


 struct json_writer JSON_WRITER_INIT ;
 int event_fmt_prepare (char const*,char const*,int,struct repository const*,struct json_writer*) ;
 int jw_end (struct json_writer*) ;
 int jw_object_begin (struct json_writer*,int ) ;
 int jw_object_string (struct json_writer*,char*,int ) ;
 int jw_release (struct json_writer*) ;
 int tr2_dst_write_line (int *,int *) ;
 int tr2dst_event ;

__attribute__((used)) static void fn_repo_fl(const char *file, int line,
         const struct repository *repo)
{
 const char *event_name = "def_repo";
 struct json_writer jw = JSON_WRITER_INIT;

 jw_object_begin(&jw, 0);
 event_fmt_prepare(event_name, file, line, repo, &jw);
 jw_object_string(&jw, "worktree", repo->worktree);
 jw_end(&jw);

 tr2_dst_write_line(&tr2dst_event, &jw.json);
 jw_release(&jw);
}
