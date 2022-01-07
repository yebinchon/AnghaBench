
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
typedef enum commit_msg_cleanup_mode { ____Placeholder_commit_msg_cleanup_mode } commit_msg_cleanup_mode ;


 int COMMIT_MSG_CLEANUP_ALL ;
 int COMMIT_MSG_CLEANUP_NONE ;
 int COMMIT_MSG_CLEANUP_SCISSORS ;
 int strbuf_setlen (struct strbuf*,int ) ;
 int strbuf_stripspace (struct strbuf*,int) ;
 int wt_status_locate_end (int ,int ) ;

void cleanup_message(struct strbuf *msgbuf,
 enum commit_msg_cleanup_mode cleanup_mode, int verbose)
{
 if (verbose ||
     cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS)
  strbuf_setlen(msgbuf, wt_status_locate_end(msgbuf->buf, msgbuf->len));
 if (cleanup_mode != COMMIT_MSG_CLEANUP_NONE)
  strbuf_stripspace(msgbuf, cleanup_mode == COMMIT_MSG_CLEANUP_ALL);
}
