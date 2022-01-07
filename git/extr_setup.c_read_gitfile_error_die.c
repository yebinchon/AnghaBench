
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG (char*) ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int die_errno (int ,char const*) ;

void read_gitfile_error_die(int error_code, const char *path, const char *dir)
{
 switch (error_code) {
 case 129:
 case 134:

  break;
 case 131:
  die_errno(_("error opening '%s'"), path);
 case 128:
  die(_("too large to be a .git file: '%s'"), path);
 case 130:
  die(_("error reading %s"), path);
 case 135:
  die(_("invalid gitfile format: %s"), path);
 case 132:
  die(_("no path in gitfile: %s"), path);
 case 133:
  die(_("not a git repository: %s"), dir);
 default:
  BUG("unknown error code");
 }
}
