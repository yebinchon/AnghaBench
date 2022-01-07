
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int userlist_entry_t ;
struct TYPE_6__ {scalar_t__ magic; int hash_cnt; int list_cnt; scalar_t__ user_id; } ;
typedef TYPE_1__ user_header_t ;
struct TYPE_7__ {int hash_cnt; int list_cnt; scalar_t__ offset; scalar_t__ file_no; scalar_t__ user_id; } ;


 TYPE_2__* A ;
 TYPE_2__* B ;
 scalar_t__ MAIL_INDEX_BLOCK_MAGIC ;
 size_t MAX_USERS ;
 size_t N ;
 int O_RDONLY ;
 TYPE_2__** P ;
 int READ_AHEAD ;
 int SEEK_SET ;
 int assert (int) ;
 int * buff ;
 scalar_t__ cur_offs ;
 scalar_t__ ifd ;
 scalar_t__ load_offs ;
 scalar_t__ lseek (scalar_t__,scalar_t__,int ) ;
 int my_sort (int ,size_t) ;
 scalar_t__ open (char const*,int ) ;
 int r ;
 int read (scalar_t__,int *,int ) ;
 int write (int,TYPE_2__*,size_t) ;

int main (int argc, const char *argv[]) {
  user_header_t *UH;
  int i;
  assert (argc == 2);
  ifd = open (argv[1], O_RDONLY);
  assert (ifd >= 0);
  N = 0;
  do {
    if (cur_offs + sizeof(user_header_t) > load_offs + r) {
      assert (lseek (ifd, cur_offs, SEEK_SET) == cur_offs);
      r = read (ifd, buff, READ_AHEAD);
      assert (r >= 0);
      load_offs = cur_offs;

      if (!r) break;
      assert (r >= sizeof(user_header_t));
    }

    UH = (user_header_t *) &buff[cur_offs - load_offs];

    assert (UH->magic == MAIL_INDEX_BLOCK_MAGIC);

    assert ((unsigned long) UH->user_id < (1L << 31) && (unsigned long) UH->hash_cnt < (1L << 24) && (unsigned long) UH->list_cnt < (1L << 26));
    cur_offs += sizeof (user_header_t);
    if (UH->user_id && (unsigned long) UH->user_id < (1L << 26)) {
      A[N].user_id = UH->user_id;
      A[N].hash_cnt = UH->hash_cnt;
      A[N].list_cnt = UH->list_cnt;
      A[N].file_no = 0;
      A[N].offset = cur_offs;
      P[N] = &A[N];
      N++;
    }
    cur_offs += UH->hash_cnt * 16 + UH->list_cnt * 4;
    assert (N <= MAX_USERS);
  } while (1);
  my_sort (0, N-1);
  for (i = 0; i < N; i++) B[i] = *P[i];
  i = write (1, B, N * sizeof(userlist_entry_t));
  assert (i == N * sizeof(userlist_entry_t));
  return 0;
}
