
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; scalar_t__ pw_gid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;


 char* DEFAULT_ENGINE_USER ;
 scalar_t__ geteuid () ;
 struct group* getgrnam (char*) ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ getuid () ;
 int kprintf (char*,...) ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ setgroups (int,scalar_t__*) ;
 scalar_t__ setuid (int ) ;

int change_user_group (char *username, char *groupname) {
  struct passwd *pw;

  if (getuid() == 0 || geteuid() == 0) {
    if (username == 0 || *username == '\0') {
      username = DEFAULT_ENGINE_USER;
    }
    if ((pw = getpwnam (username)) == 0) {
      kprintf ("change_user_group: can't find the user %s to switch to\n", username);
      return -1;
    }
    gid_t gid = pw->pw_gid;
    if (setgroups (1, &gid) < 0) {
      kprintf ("change_user_group: failed to clear supplementary groups list: %m\n");
      return -1;
    }

    if (groupname) {
      struct group *g = getgrnam (groupname);
      if (g == ((void*)0)) {
        kprintf ("change_user_group: can't find the group %s to switch to\n", groupname);
        return -1;
      }
      gid = g->gr_gid;
    }

    if (setgid (gid) < 0) {
      kprintf ("change_user_group: setgid (%d) failed. %m\n", (int) gid);
      return -1;
    }

    if (setuid (pw->pw_uid) < 0) {
      kprintf ("change_user_group: failed to assume identity of user %s\n", username);
      return -1;
    }
  }
  return 0;
}
