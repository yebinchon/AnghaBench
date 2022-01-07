
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_push ;
struct TYPE_7__ {char const* data; size_t len; } ;
typedef TYPE_1__ git_pkt_data ;
typedef int git_pkt ;
struct TYPE_8__ {size_t size; char* ptr; } ;
typedef TYPE_2__ git_buf ;


 int GIT_EBUFS ;
 int GIT_ITEROVER ;
 int add_push_report_pkt (int *,int *) ;
 int git_buf_consume (TYPE_2__*,char const*) ;
 int git_buf_put (TYPE_2__*,char const*,size_t) ;
 int git_pkt_free (int *) ;
 int git_pkt_parse_line (int **,char const**,char const*,size_t) ;

__attribute__((used)) static int add_push_report_sideband_pkt(git_push *push, git_pkt_data *data_pkt, git_buf *data_pkt_buf)
{
 git_pkt *pkt;
 const char *line, *line_end = ((void*)0);
 size_t line_len;
 int error;
 int reading_from_buf = data_pkt_buf->size > 0;

 if (reading_from_buf) {


  git_buf_put(data_pkt_buf, data_pkt->data, data_pkt->len);
  line = data_pkt_buf->ptr;
  line_len = data_pkt_buf->size;
 }
 else {
  line = data_pkt->data;
  line_len = data_pkt->len;
 }

 while (line_len > 0) {
  error = git_pkt_parse_line(&pkt, &line_end, line, line_len);

  if (error == GIT_EBUFS) {


   if (!reading_from_buf)
    git_buf_put(data_pkt_buf, line, line_len);
   error = 0;
   goto done;
  }
  else if (error < 0)
   goto done;


  line_len -= (line_end - line);
  line = line_end;

  error = add_push_report_pkt(push, pkt);

  git_pkt_free(pkt);

  if (error < 0 && error != GIT_ITEROVER)
   goto done;
 }

 error = 0;

done:
 if (reading_from_buf)
  git_buf_consume(data_pkt_buf, line_end);
 return error;
}
