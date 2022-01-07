
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct diff_tempfile {int mode; int hex; int name; } ;
struct diff_filespec {int dummy; } ;
struct argv_array {int dummy; } ;


 int argv_array_push (struct argv_array*,int ) ;
 struct diff_tempfile* prepare_temp_file (struct repository*,char const*,struct diff_filespec*) ;

__attribute__((used)) static void add_external_diff_name(struct repository *r,
       struct argv_array *argv,
       const char *name,
       struct diff_filespec *df)
{
 struct diff_tempfile *temp = prepare_temp_file(r, name, df);
 argv_array_push(argv, temp->name);
 argv_array_push(argv, temp->hex);
 argv_array_push(argv, temp->mode);
}
