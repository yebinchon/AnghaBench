
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASCEBC (int ,int) ;
 int BUG_ON (int) ;
 int DIAG_STAT_X008 ;
 int EBCASC (char*,int) ;
 int cpcmd_buf ;
 int diag8_noresponse (int) ;
 int diag8_response (int,char*,int*) ;
 int diag_stat_inc (int ) ;
 int memcpy (int ,char const*,int) ;
 int memset (char*,int ,int) ;
 int strlen (char const*) ;

int __cpcmd(const char *cmd, char *response, int rlen, int *response_code)
{
 int cmdlen;
 int rc;
 int response_len;

 cmdlen = strlen(cmd);
 BUG_ON(cmdlen > 240);
 memcpy(cpcmd_buf, cmd, cmdlen);
 ASCEBC(cpcmd_buf, cmdlen);

 diag_stat_inc(DIAG_STAT_X008);
 if (response) {
  memset(response, 0, rlen);
  response_len = rlen;
  rc = diag8_response(cmdlen, response, &rlen);
  EBCASC(response, response_len);
        } else {
  rc = diag8_noresponse(cmdlen);
        }
 if (response_code)
  *response_code = rc;
 return rlen;
}
