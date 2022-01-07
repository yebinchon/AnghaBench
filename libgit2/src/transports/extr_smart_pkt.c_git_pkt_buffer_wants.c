
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ common; } ;
typedef TYPE_1__ transport_smart_caps ;
struct TYPE_8__ {int oid; scalar_t__ local; } ;
typedef TYPE_2__ git_remote_head ;
typedef int git_buf ;


 int GIT_OID_HEXSZ ;
 scalar_t__ buffer_want_with_caps (TYPE_2__ const* const,TYPE_1__*,int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_put (int *,char*,int) ;
 int git_buf_putc (int *,char) ;
 int git_oid_fmt (char*,int *) ;
 int git_pkt_buffer_flush (int *) ;
 char* pkt_want_prefix ;
 int strlen (char*) ;

int git_pkt_buffer_wants(
 const git_remote_head * const *refs,
 size_t count,
 transport_smart_caps *caps,
 git_buf *buf)
{
 size_t i = 0;
 const git_remote_head *head;

 if (caps->common) {
  for (; i < count; ++i) {
   head = refs[i];
   if (!head->local)
    break;
  }

  if (buffer_want_with_caps(refs[i], caps, buf) < 0)
   return -1;

  i++;
 }

 for (; i < count; ++i) {
  char oid[GIT_OID_HEXSZ];

  head = refs[i];
  if (head->local)
   continue;

  git_oid_fmt(oid, &head->oid);
  git_buf_put(buf, pkt_want_prefix, strlen(pkt_want_prefix));
  git_buf_put(buf, oid, GIT_OID_HEXSZ);
  git_buf_putc(buf, '\n');
  if (git_buf_oom(buf))
   return -1;
 }

 return git_pkt_buffer_flush(buf);
}
