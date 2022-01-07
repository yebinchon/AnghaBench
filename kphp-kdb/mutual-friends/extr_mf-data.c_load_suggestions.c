
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sugg; } ;
typedef TYPE_1__ user ;


 int MAX_INIT ;
 int MAX_SUGGESTIONS ;
 int assert (int) ;
 scalar_t__ close (int) ;
 TYPE_1__* conv_uid (int) ;
 int* fd ;
 long long* fsize ;
 scalar_t__ open_file (int,char*,int) ;
 int read (int,...) ;
 int trp_incr (int *,int,int) ;

void load_suggestions (char *suggname) {
  assert (open_file (3, suggname, -1) >= 0);

  static int buff[30000];

  int id, n;
  user *u;

  long long sz;
  assert (read (fd[3], &sz, sizeof (long long)) == sizeof (long long));
  assert (sz == fsize[3]);

  while (read (fd[3], &id, sizeof (int)) == sizeof (int)) {
    assert (read (fd[3], &n, sizeof (int)) == sizeof (int));
    assert (0 <= n && n * 2 < 30000);
    int len = sizeof (int) * 2 * n;
    assert (read (fd[3], buff, len) == len);

    u = conv_uid (id);
    if (u == ((void*)0)) {
      continue;
    }

    if (n > MAX_SUGGESTIONS) {
      n = MAX_SUGGESTIONS;
    }

    int i;
    for (i = 0; i < n; i++) {
      trp_incr (&u->sugg, buff[2 * i + 1], buff[2 * i]);
    }
  }

  assert (close (fd[3]) >= 0);
  fd[3] = -1;

}
