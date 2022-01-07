
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct object_id {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {char* alternate_shallow_file; int is_shallow; int shallow_stat; } ;
typedef int FILE ;


 int die (char*,char*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ get_oid_hex (char*,struct object_id*) ;
 char* git_path_shallow (struct repository*) ;
 int register_shallow (struct repository*,struct object_id*) ;
 int stat_validity_clear (int ) ;
 int stat_validity_update (int ,int ) ;

int is_repository_shallow(struct repository *r)
{







 FILE *fp;
 char buf[1024];
 const char *path = r->parsed_objects->alternate_shallow_file;

 if (r->parsed_objects->is_shallow >= 0)
  return r->parsed_objects->is_shallow;

 if (!path)
  path = git_path_shallow(r);





 if (!*path || (fp = fopen(path, "r")) == ((void*)0)) {
  stat_validity_clear(r->parsed_objects->shallow_stat);
  r->parsed_objects->is_shallow = 0;
  return r->parsed_objects->is_shallow;
 }
 stat_validity_update(r->parsed_objects->shallow_stat, fileno(fp));
 r->parsed_objects->is_shallow = 1;

 while (fgets(buf, sizeof(buf), fp)) {
  struct object_id oid;
  if (get_oid_hex(buf, &oid))
   die("bad shallow line: %s", buf);
  register_shallow(r, &oid);
 }
 fclose(fp);
 return r->parsed_objects->is_shallow;
}
