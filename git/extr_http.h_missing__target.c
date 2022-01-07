
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURLE_FILE_COULDNT_READ_FILE ;
 int CURLE_FTP_COULDNT_RETR_FILE ;
 int CURLE_HTTP_RETURNED_ERROR ;

__attribute__((used)) static inline int missing__target(int code, int result)
{
 return
  (result == CURLE_FILE_COULDNT_READ_FILE) ||

  (code == 404 && result == CURLE_HTTP_RETURNED_ERROR) ||

  (code == 550 && result == CURLE_FTP_COULDNT_RETR_FILE)
  ;
}
