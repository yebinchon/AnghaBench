
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository_format {int version; } ;


 int check_repo_format ;
 int clear_repository_format (struct repository_format*) ;
 int git_config_from_file (int ,char const*,struct repository_format*) ;

int read_repository_format(struct repository_format *format, const char *path)
{
 clear_repository_format(format);
 git_config_from_file(check_repo_format, path, format);
 if (format->version == -1)
  clear_repository_format(format);
 return format->version;
}
