
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pkt ;


 int GIT_EBUFS ;
 int GIT_ERROR ;
 int GIT_ERROR_NET ;
 char const GIT_SIDE_BAND_DATA ;
 char const GIT_SIDE_BAND_ERROR ;
 char const GIT_SIDE_BAND_PROGRESS ;
 size_t PKT_LEN_SIZE ;
 int ack_pkt (int **,char const*,size_t) ;
 int comment_pkt (int **,char const*,size_t) ;
 int data_pkt (int **,char const*,size_t) ;
 int err_pkt (int **,char const*,size_t) ;
 int flush_pkt (int **) ;
 int git__prefixncmp (char const*,size_t,char*) ;
 int git_error_set (int ,char*) ;
 int git_error_set_str (int ,char*) ;
 int nak_pkt (int **) ;
 int ng_pkt (int **,char const*,size_t) ;
 int ok_pkt (int **,char const*,size_t) ;
 int parse_len (size_t*,char const*,size_t) ;
 int ref_pkt (int **,char const*,size_t) ;
 int sideband_error_pkt (int **,char const*,size_t) ;
 int sideband_progress_pkt (int **,char const*,size_t) ;
 int unpack_pkt (int **,char const*,size_t) ;

int git_pkt_parse_line(
 git_pkt **pkt, const char **endptr, const char *line, size_t linelen)
{
 int error;
 size_t len;

 if ((error = parse_len(&len, line, linelen)) < 0) {






  if (error == GIT_EBUFS)
   ;
  else if (!git__prefixncmp(line, linelen, "PACK"))
   git_error_set(GIT_ERROR_NET, "unexpected pack file");
  else
   git_error_set(GIT_ERROR_NET, "bad packet length");
  return error;
 }





 if (linelen < len)
  return GIT_EBUFS;






 if (len != 0 && len < PKT_LEN_SIZE)
  return GIT_ERROR;

 line += PKT_LEN_SIZE;





 if (len == PKT_LEN_SIZE) {
  git_error_set_str(GIT_ERROR_NET, "Invalid empty packet");
  return GIT_ERROR;
 }

 if (len == 0) {
  *endptr = line;
  return flush_pkt(pkt);
 }

 len -= PKT_LEN_SIZE;

 if (*line == GIT_SIDE_BAND_DATA)
  error = data_pkt(pkt, line, len);
 else if (*line == GIT_SIDE_BAND_PROGRESS)
  error = sideband_progress_pkt(pkt, line, len);
 else if (*line == GIT_SIDE_BAND_ERROR)
  error = sideband_error_pkt(pkt, line, len);
 else if (!git__prefixncmp(line, len, "ACK"))
  error = ack_pkt(pkt, line, len);
 else if (!git__prefixncmp(line, len, "NAK"))
  error = nak_pkt(pkt);
 else if (!git__prefixncmp(line, len, "ERR"))
  error = err_pkt(pkt, line, len);
 else if (*line == '#')
  error = comment_pkt(pkt, line, len);
 else if (!git__prefixncmp(line, len, "ok"))
  error = ok_pkt(pkt, line, len);
 else if (!git__prefixncmp(line, len, "ng"))
  error = ng_pkt(pkt, line, len);
 else if (!git__prefixncmp(line, len, "unpack"))
  error = unpack_pkt(pkt, line, len);
 else
  error = ref_pkt(pkt, line, len);

 *endptr = line + len;

 return error;
}
