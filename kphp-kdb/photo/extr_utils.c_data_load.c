
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int n; } ;
struct TYPE_4__ {int objects_n; int* objects_offset; char* objects; TYPE_2__ hidden_state; int prm; int restore_info; int id_to_local_id; } ;
typedef TYPE_1__ data ;


 int PERM (int ,int *,size_t,int ) ;
 int READ_INT (char*,int) ;
 int assert (int) ;
 int inc_pass ;
 int lookup_load (TYPE_2__*,char*,int) ;
 int lookup_load_old (int *,char*,int,int) ;
 int read_restore (int*,int,int *) ;

void data_load (data *d, char *metafile, int metafile_len) {
  char *s = metafile, *t = s + metafile_len;

  int init_perm = d->objects_n == -2;

  READ_INT (s, d->objects_n);





  d->objects_offset = (int *)s;
  s += sizeof (int) * (d->objects_n + 1);


  s += lookup_load_old (&d->id_to_local_id, s, t - s, d->objects_n);

  d->objects = s;

  s = d->objects + d->objects_offset[d->objects_n];

  if (t != s && d->objects_n) {
    int lookup_len;
    assert (s + sizeof (int) <= t);
    READ_INT (s, lookup_len);
    assert (s + lookup_len <= t);
    lookup_load (&d->hidden_state, s, lookup_len);
    s += lookup_len;

    if (init_perm) {
      int restore_n;
      assert (s + sizeof (int) <= t);
      READ_INT (s, restore_n);

      int restore_len = sizeof (int) * restore_n;
      assert (s + restore_len <= t);
      s += read_restore ((int *)s, restore_n, &d->restore_info);
    }

  } else {
    lookup_load (&d->hidden_state, ((void*)0), 0);
  }
  if (init_perm) {

    PERM (inc_pass, &d->prm, d->objects_n, d->hidden_state.n);
  }
}
