
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* metafile; int albums_n; int metafile_len; int* albums_id; int* albums_offset; int album_by_photo; int d; } ;
typedef TYPE_1__ user ;
struct TYPE_7__ {int user_cnt; } ;


 char* EMPTY__METAFILE ;
 int READ_INT (char*,int) ;
 int assert (int) ;
 int crc32_check_and_repair (char*,int,unsigned int*,int) ;
 int data_load (int *,char*,int) ;
 int dbg (char*,...) ;
 int fprintf (int ,char*,int,TYPE_1__*) ;
 TYPE_3__ header ;
 int lookup_load (int *,char*,int) ;
 int stderr ;
 TYPE_1__* users ;
 int verbosity ;

void bind_user_metafile (user *u) {
  if (verbosity > 2) {
    fprintf (stderr, "bind user metafile local id = %d (%p)\n", (int)(u - users), u);
  }
  dbg ("bind user metafile local id = %d (%p)\n", (int)(u - users), u);
  int local_id = (int)(u - users);

  if (u->metafile == ((void*)0) || u->metafile == EMPTY__METAFILE) {
    assert (u->metafile != ((void*)0));
    dbg ("empty metafile found\n");

    data_load (&u->d, EMPTY__METAFILE, sizeof (int));
    lookup_load (&u->album_by_photo, ((void*)0), 0);
    u->albums_n = 0;

    return;
  }

  assert (u->metafile_len >= (int)sizeof (int));
  unsigned int crc;


  assert (1 <= local_id && local_id <= header.user_cnt);





  char *s = u->metafile;
  int len = u->metafile_len;

  READ_INT (s, crc);

  crc32_check_and_repair (s, u->metafile_len - sizeof (int), &crc, 1);


  READ_INT (s, len);

  data_load (&u->d, s, len);
  s += len;

  READ_INT (s, u->albums_n);

  u->albums_id = (int *)s;
  s += sizeof (int) * u->albums_n;
  u->albums_offset = (int *)s;
  s += sizeof (int) * (u->albums_n + 1);

  s = u->metafile + u->albums_offset[u->albums_n];

  READ_INT (s, len);

  lookup_load (&u->album_by_photo, s, len);
  s += len;

  assert (s <= u->metafile + u->metafile_len);
}
