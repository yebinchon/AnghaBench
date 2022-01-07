
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 char* expand_user_path (char*,int ) ;
 int free (char*) ;
 int stat (char*,struct stat*) ;
 char* xdg_cache_home (char*) ;
 char* xstrfmt (char*,char*) ;

__attribute__((used)) static char *get_socket_path(void)
{
 struct stat sb;
 char *old_dir, *socket;
 old_dir = expand_user_path("~/.git-credential-cache", 0);
 if (old_dir && !stat(old_dir, &sb) && S_ISDIR(sb.st_mode))
  socket = xstrfmt("%s/socket", old_dir);
 else
  socket = xdg_cache_home("credential/socket");
 free(old_dir);
 return socket;
}
