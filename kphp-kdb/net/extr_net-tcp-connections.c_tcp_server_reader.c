
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct raw_message {scalar_t__ last_offset; int total_bytes; struct msg_part* last; scalar_t__ first_offset; struct msg_part* first; } ;
struct msg_part {int offset; int len; struct msg_part* next; TYPE_2__* part; } ;
struct msg_buffer {int data; TYPE_3__* chunk; } ;
struct connection {scalar_t__ crypto; int flags; int status; int skip_bytes; scalar_t__ basic_type; int fd; TYPE_4__* type; scalar_t__ error; scalar_t__ parse_state; struct raw_message in; struct raw_message in_u; } ;
struct TYPE_11__ {int iov_len; int iov_base; } ;
struct TYPE_10__ {scalar_t__ (* crypto_decrypt_input ) (struct connection*) ;scalar_t__ (* crypto_encrypt_output ) (struct connection*) ;int (* parse_execute ) (struct connection*) ;} ;
struct TYPE_9__ {int buffer_size; } ;
struct TYPE_8__ {int data; TYPE_1__* chunk; } ;
struct TYPE_7__ {scalar_t__ buffer_size; } ;


 int C_FAILED ;
 int C_NORD ;
 int C_REPARSE ;
 int C_STOPREAD ;
 int C_WANTRD ;
 scalar_t__ EAGAIN ;
 scalar_t__ MAX_TCP_RECV_BUFFERS ;
 int NEED_MORE_BYTES ;
 int TCP_RECV_BUFFER_SIZE ;
 struct msg_buffer* alloc_msg_buffer (struct msg_buffer*,int ) ;
 int assert (int) ;
 int conn_expect_query ;
 int conn_reading_answer ;
 int conn_reading_query ;
 int conn_wait_answer ;
 int conn_write_close ;
 scalar_t__ ct_pipe ;
 scalar_t__ errno ;
 int exit (int) ;
 int fork_message_chain (struct raw_message*) ;
 int fprintf (int ,char*,int,int,...) ;
 struct msg_part* new_msg_part (int ,struct msg_buffer*) ;
 int perror (char*) ;
 int prealloc_tcp_buffers () ;
 int read (int,int,int) ;
 int readv (int,TYPE_5__*,scalar_t__) ;
 int rwm_clear (struct raw_message*) ;
 int rwm_fetch_data (struct raw_message*,int ,int) ;
 int stderr ;
 scalar_t__ stub1 (struct connection*) ;
 scalar_t__ stub2 (struct connection*) ;
 scalar_t__ stub3 (struct connection*) ;
 int stub4 (struct connection*) ;
 scalar_t__ stub5 (struct connection*) ;
 struct msg_buffer** tcp_recv_buffers ;
 int tcp_recv_buffers_num ;
 int tcp_recv_buffers_total_size ;
 TYPE_5__* tcp_recv_iovec ;
 int verbosity ;
 int vkprintf (int,char*,...) ;

int tcp_server_reader (struct connection *c) {
  int res = 0, r, r1, s;

  struct raw_message *in = c->crypto ? &c->in_u : &c->in;
  struct raw_message *cin = &c->in;

  while (1) {

    int try_read = (c->flags & C_WANTRD) && !(c->flags & (C_NORD | C_FAILED | C_STOPREAD)) && !c->error;

    int try_reparse = (c->flags & C_REPARSE) && (c->status == conn_expect_query || c->status == conn_reading_query || c->status == conn_wait_answer || c->status == conn_reading_answer) && !c->skip_bytes;
    if (!try_read && !try_reparse) {
      break;
    }

    if (try_read) {

      if (c->status == conn_write_close) {
        rwm_clear (&c->in);
        rwm_clear (&c->in_u);
        c->flags &= ~C_WANTRD;
        break;
      }

      if (!tcp_recv_buffers_num) {
        prealloc_tcp_buffers ();
      }

      if (in->last && in->last->next) {
        fork_message_chain (in);
      }
      int p;
      if (c->basic_type != ct_pipe) {
        s = tcp_recv_buffers_total_size;
        if (in->last && in->last_offset != in->last->part->chunk->buffer_size) {
          tcp_recv_iovec[0].iov_len = in->last->part->chunk->buffer_size - in->last_offset;
          tcp_recv_iovec[0].iov_base = in->last->part->data + in->last_offset;
          p = 0;
        } else {
          p = 1;
        }
        r = readv (c->fd, tcp_recv_iovec + p, MAX_TCP_RECV_BUFFERS + 1 - p);
      } else {
        p = 1;
        s = tcp_recv_iovec[1].iov_len;
        r = read (c->fd, tcp_recv_iovec[1].iov_base, tcp_recv_iovec[1].iov_len);
      }

      if (r < s) {
        c->flags |= C_NORD;
      }

      if (verbosity > 0) {
        fprintf (stderr, "recv() from %d: %d read out of %d. Crypto = %d\n", c->fd, r, s, c->crypto != 0);
        if (r < 0 && errno != EAGAIN) {
          perror ("recv()");
        }
      }

      if (r > 0) {
        struct msg_part *mp = 0;
        if (!in->last) {
          assert (p == 1);
          mp = new_msg_part (0, tcp_recv_buffers[p - 1]);
          assert (tcp_recv_buffers[p - 1]->data == tcp_recv_iovec[p].iov_base);
          mp->offset = 0;
          mp->len = r > tcp_recv_iovec[p].iov_len ? tcp_recv_iovec[p].iov_len : r;
          r -= mp->len;
          in->first = in->last = mp;
          in->total_bytes = mp->len;
          in->first_offset = 0;
          in->last_offset = mp->len;
          p ++;
        } else {
          assert (in->last->offset + in->last->len == in->last_offset);
          if (p == 0) {
            int t = r > tcp_recv_iovec[0].iov_len ? tcp_recv_iovec[0].iov_len : r;
            in->last->len += t;
            in->total_bytes += t;
            in->last_offset += t;
            r -= t;
            p ++;
          }
        }

        assert (in->last && !in->last->next);

        while (r > 0) {
          mp = new_msg_part (0, tcp_recv_buffers[p - 1]);
          mp->offset = 0;
          mp->len = r > tcp_recv_iovec[p].iov_len ? tcp_recv_iovec[p].iov_len : r;
          r -= mp->len;
          in->last->next = mp;
          in->last = mp;
          in->last_offset = mp->len + mp->offset;
          in->total_bytes += mp->len;
          p ++;
        }
        assert (!r);

        int i;
        for (i = 0; i < p - 1; i++) {
          struct msg_buffer *X = alloc_msg_buffer (tcp_recv_buffers[i], TCP_RECV_BUFFER_SIZE);
          if (!X) {
            vkprintf (0, "**FATAL**: cannot allocate udp receive buffer\n");
            exit (2);
          }
          tcp_recv_buffers[i] = X;
          tcp_recv_iovec[i + 1].iov_base = X->data;
          tcp_recv_iovec[i + 1].iov_len = X->chunk->buffer_size;
        }

        s = c->skip_bytes;

        if (s && c->crypto) {
          assert (c->type->crypto_decrypt_input (c) >= 0);
        }

        r1 = c->in.total_bytes;

        if (s < 0) {

          if (r1 > -s) {
            r1 = -s;
          }

          rwm_fetch_data (cin, 0, r1);
          c->skip_bytes = s += r1;

          if (verbosity > 2) {
            fprintf (stderr, "skipped %d bytes, %d more to skip\n", r1, -s);
          }
          if (s) {
            continue;
          }
        }

        if (s > 0) {

          if (r1 >= s) {
            c->skip_bytes = s = 0;
          }

          vkprintf (1, "fetched %d bytes, %d available bytes, %d more to load\n", r, r1, s ? s - r1 : 0);
          if (s) {
            continue;
          }
        }
      }
    } else {
      r = 0x7fffffff;
    }

    if (c->crypto) {
      assert (c->type->crypto_decrypt_input (c) >= 0);
    }

    while (!c->skip_bytes && (c->status == conn_expect_query || c->status == conn_reading_query ||
                              c->status == conn_wait_answer || c->status == conn_reading_answer)) {

      int conn_expect = (c->status - 1) | 1;
      c->flags &= ~C_REPARSE;
      if (!cin->total_bytes) {

        if (c->crypto) {
          assert (c->type->crypto_encrypt_output (c) >= 0);
        }
        return 0;
      }
      if (c->status == conn_expect) {
        c->parse_state = 0;
        c->status++;
      }
      res = c->type->parse_execute (c);

      if (!res) {
        if (c->status == conn_expect + 1) {
          c->status--;
        }
        if (c->error) {
          return -1;
        }
      } else if (res != NEED_MORE_BYTES) {

        if (res < 0) {
          assert (!cin->total_bytes);
          res -= cin->total_bytes;
        } else {
          res += cin->total_bytes;
        }
        c->skip_bytes = res;
        break;
      }
    }

    if (r <= 0) {
      break;
    }
  }

  if (c->crypto) {

    assert (c->type->crypto_encrypt_output (c) >= 0);
  }

  return res;
}
