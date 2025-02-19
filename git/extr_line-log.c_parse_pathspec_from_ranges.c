
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct line_log_data {int path; struct line_log_data* next; } ;
struct argv_array {int dummy; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int PATHSPEC_PREFER_FULL ;
 char** argv_array_detach (struct argv_array*) ;
 int argv_array_push (struct argv_array*,int ) ;
 int free (char const**) ;
 int parse_pathspec (struct pathspec*,int ,int ,char*,char const**) ;

__attribute__((used)) static void parse_pathspec_from_ranges(struct pathspec *pathspec,
           struct line_log_data *range)
{
 struct line_log_data *r;
 struct argv_array array = ARGV_ARRAY_INIT;
 const char **paths;

 for (r = range; r; r = r->next)
  argv_array_push(&array, r->path);
 paths = argv_array_detach(&array);

 parse_pathspec(pathspec, 0, PATHSPEC_PREFER_FULL, "", paths);

 free(paths);
}
