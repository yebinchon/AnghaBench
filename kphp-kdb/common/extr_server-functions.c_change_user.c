
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; int pw_gid; } ;
typedef int gid_t ;


 char* DEFAULT_ENGINE_USER ;
 scalar_t__ geteuid () ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ getuid () ;
 scalar_t__ initgroups (char*,int ) ;
 int kprintf (char*,...) ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setgroups (int,int *) ;
 scalar_t__ setuid (int ) ;

int change_user (char *username) {
  struct passwd *pw;

  if (getuid() == 0 || geteuid() == 0) {
    if (username == 0 || *username == '\0') {
      username = DEFAULT_ENGINE_USER;


    }
    if ((pw = getpwnam (username)) == 0) {
      kprintf ("can't find the user %s to switch to\n", username);
      return -1;
    }
    gid_t gid = pw->pw_gid;
    if (setgroups(1, &gid) < 0) {
      kprintf ("failed to clear supplementary groups list: %m\n");
      return -1;
    }
    if (initgroups(username, gid) != 0) {
      kprintf ("failed to load groups of user %s: %m\n", username);
      return -1;
    }
    if (setgid (pw->pw_gid) < 0 || setuid (pw->pw_uid) < 0) {
      kprintf ("failed to assume identity of user %s\n", username);
      return -1;
    }
  }
  return 0;
}
