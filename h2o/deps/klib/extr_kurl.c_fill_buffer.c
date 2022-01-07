
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; long tv_usec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {scalar_t__ p_buf; scalar_t__ l_buf; int done_reading; scalar_t__ m_buf; scalar_t__ buf; int multi; int curl; int fd; int off0; } ;
typedef TYPE_1__ kurl_t ;
typedef int fd_set ;


 int CURLPAUSE_CONT ;
 scalar_t__ CURL_MAX_WRITE_SIZE ;
 int FD_ZERO (int *) ;
 int assert (int) ;
 int curl_easy_pause (int ,int ) ;
 int curl_multi_fdset (int ,int *,int *,int *,int*) ;
 int curl_multi_perform (int ,int*) ;
 int curl_multi_timeout (int ,long*) ;
 scalar_t__ kurl_isfile (TYPE_1__*) ;
 int nanosleep (struct timespec*,struct timespec*) ;
 int read (int ,scalar_t__,scalar_t__) ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int fill_buffer(kurl_t *ku)
{
 assert(ku->p_buf == ku->l_buf);
 ku->off0 += ku->l_buf;
 ku->p_buf = ku->l_buf = 0;
 if (ku->done_reading) return 0;
 if (kurl_isfile(ku)) {



  while (ku->l_buf < ku->m_buf) {
   int l;
   l = read(ku->fd, ku->buf + ku->l_buf, ku->m_buf - ku->l_buf);
   if (l == 0) break;
   ku->l_buf += l;
  }
  if (ku->l_buf < ku->m_buf) ku->done_reading = 1;
 } else {
  int n_running, rc;
  fd_set fdr, fdw, fde;
  do {
   int maxfd = -1;
   long curl_to = -1;
   struct timeval to;

   to.tv_sec = 10, to.tv_usec = 0;
   curl_multi_timeout(ku->multi, &curl_to);
   if (curl_to >= 0) {
    to.tv_sec = curl_to / 1000;
    if (to.tv_sec > 1) to.tv_sec = 1;
    else to.tv_usec = (curl_to % 1000) * 1000;
   }
   FD_ZERO(&fdr); FD_ZERO(&fdw); FD_ZERO(&fde);
   curl_multi_fdset(ku->multi, &fdr, &fdw, &fde, &maxfd);
   if (maxfd >= 0 && (rc = select(maxfd+1, &fdr, &fdw, &fde, &to)) < 0) break;
   if (maxfd < 0) {
    struct timespec req, rem;
    req.tv_sec = 0; req.tv_nsec = 100000000;
    nanosleep(&req, &rem);
   }
   curl_easy_pause(ku->curl, CURLPAUSE_CONT);
   rc = curl_multi_perform(ku->multi, &n_running);
  } while (n_running && ku->l_buf < ku->m_buf - CURL_MAX_WRITE_SIZE);
  if (ku->l_buf < ku->m_buf - CURL_MAX_WRITE_SIZE) ku->done_reading = 1;
 }
 return ku->l_buf;
}
