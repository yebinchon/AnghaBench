
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; unsigned char* data; } ;
struct t_server {unsigned char index; TYPE_1__ s; } ;
struct t_num {unsigned char len; unsigned char* data; } ;
struct TYPE_5__ {unsigned char* username; unsigned char* key; } ;
typedef TYPE_2__ TSRP_SESSION ;


 int MAXPARAMLEN ;
 int MAXUSERLEN ;
 int MSG_WAITALL ;
 int RESPONSE_LEN ;
 int SESSION_KEY_LEN ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int recv (int,unsigned char*,int,int ) ;
 scalar_t__ send (int,unsigned char*,int,int ) ;
 int strlen (unsigned char*) ;
 int t_serverclose (struct t_server*) ;
 struct t_num* t_servergenexp (struct t_server*) ;
 unsigned char* t_servergetkey (struct t_server*,struct t_num*) ;
 struct t_server* t_serveropen (unsigned char*) ;
 unsigned char* t_serverresponse (struct t_server*) ;
 scalar_t__ t_serververify (struct t_server*,unsigned char*) ;

int tsrp_server_authenticate(int s, TSRP_SESSION *tsrp)
{
 int i, j;
 unsigned char username[MAXUSERLEN], *skey;
 unsigned char msgbuf[MAXPARAMLEN + 1], abuf[MAXPARAMLEN];
 struct t_server *ts;
 struct t_num A, *B;



 i = recv(s, msgbuf, 1, 0);
 if (i <= 0) {
  return 0;
 }
 j = msgbuf[0];
 i = recv(s, username, j, MSG_WAITALL);
 if (i <= 0) {
  return 0;
 }
 username[j] = '\0';

 ts = t_serveropen(username);
 if (ts == ((void*)0)) {
  return 0;
 }



 msgbuf[0] = ts->index;
 i = ts->s.len;
 msgbuf[1] = i;
 memcpy(msgbuf + 2, ts->s.data, i);
 if (send(s, msgbuf, i + 2, 0) < 0) {
  return 0;
 }



 B = t_servergenexp(ts);



 i = recv(s, msgbuf, 1, 0);
 if (i <= 0) {
  return 0;
 }
 A.len = msgbuf[0] + 1;
 A.data = abuf;
 i = recv(s, abuf, A.len, MSG_WAITALL);
 if (i <= 0) {
  return 0;
 }



 msgbuf[0] = B->len - 1;
 memcpy(msgbuf + 1, B->data, B->len);
 if (send(s, msgbuf, B->len + 1, 0) < 0) {
  return 0;
 }



 skey = t_servergetkey(ts, &A);
 if (skey == ((void*)0)) {
  return 0;
 }



 i = recv(s, msgbuf, RESPONSE_LEN, MSG_WAITALL);
 if (i <= 0) {
  return 0;
 }
 if (t_serververify(ts, msgbuf) != 0) {
  return 0;
 }



 if (send(s, t_serverresponse(ts), RESPONSE_LEN, 0) < 0) {
  return 0;
 }



 if (tsrp) {
  memcpy(tsrp->username, username, strlen(username) + 1);
  memcpy(tsrp->key, skey, SESSION_KEY_LEN);
 }
 t_serverclose(ts);

 return 1;
}
