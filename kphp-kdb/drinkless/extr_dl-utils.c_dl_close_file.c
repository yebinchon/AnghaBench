
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_FN ;
 int assert (int) ;
 scalar_t__ close (int) ;
 int dl_free (int *,scalar_t__) ;
 int* fd ;
 int ** fnames ;
 scalar_t__* fpos ;
 scalar_t__* fread_only ;
 scalar_t__* fsize ;
 scalar_t__ fsync (int) ;
 scalar_t__ strlen (int *) ;

void dl_close_file (int x) {
  assert (0 <= x && x < MAX_FN);
  assert (fd[x] != -1);

  if (!fread_only[x]) {
    assert (fsync (fd[x]) >= 0);
  } else {
    fread_only[x] = 0;
  }
  assert (close (fd[x]) >= 0);
  fd[x] = -1;

  fsize[x] = 0;
  fpos[x] = 0;
  dl_free (fnames[x], strlen (fnames[x]) + 1);
  fnames[x] = ((void*)0);
}
