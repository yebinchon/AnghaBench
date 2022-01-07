
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tn ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct ead_msg {int type; } ;
struct ead_packet {struct ead_msg msg; } ;
struct ead_msg_cmd_data {int done; int data; } ;
struct ead_msg_cmd {scalar_t__* data; int timeout; int type; } ;
typedef int pid_t ;
typedef int fd_set ;
struct TYPE_2__ {struct ead_msg msg; } ;


 int DEBUG (int,char*,int,int ,int) ;


 int EAD_CMD_TIMEOUT ;
 void* EAD_ENC_DATA (struct ead_msg*,int ) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int PCAP_TIMEOUT ;
 int SIGKILL ;
 int child_pending ;
 int close (int) ;
 struct ead_msg_cmd* cmd ;
 int cmd_data ;
 int dup2 (int,int) ;
 int ead_decrypt_message (struct ead_msg*) ;
 int ead_encrypt_message (struct ead_msg*,int) ;
 int ead_send_packet_clone (struct ead_packet*) ;
 int exit (int ) ;
 int fcntl (int,int ,...) ;
 int fork () ;
 int gettimeofday (struct timeval*,int *) ;
 int kill (int ,int ) ;
 int memcpy (struct timeval*,struct timeval*,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int open (char*,int ) ;
 int pipe (int*) ;
 TYPE_1__* pktbuf ;
 int read (int,int ,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int system (char*) ;

__attribute__((used)) static bool
handle_send_cmd(struct ead_packet *pkt, int len, int *nstate)
{
 struct ead_msg *msg = &pkt->msg;
 struct ead_msg_cmd *cmd = EAD_ENC_DATA(msg, cmd);
 struct ead_msg_cmd_data *cmddata;
 struct timeval tv, to, tn;
 int pfd[2], fd;
 fd_set fds;
 pid_t pid;
 bool stream = 0;
 int timeout;
 int type;
 int datalen;

 datalen = ead_decrypt_message(msg) - sizeof(struct ead_msg_cmd);
 if (datalen <= 0)
  return 0;

 type = ntohs(cmd->type);
 timeout = ntohs(cmd->timeout);

 FD_ZERO(&fds);
 cmd->data[datalen] = 0;
 switch(type) {
 case 128:
  if (pipe(pfd) < 0)
   return 0;

  fcntl(pfd[0], F_SETFL, O_NONBLOCK | fcntl(pfd[0], F_GETFL));
  child_pending = 1;
  pid = fork();
  if (pid == 0) {
   close(pfd[0]);
   fd = open("/dev/null", O_RDWR);
   if (fd > 0) {
    dup2(fd, 0);
    dup2(pfd[1], 1);
    dup2(pfd[1], 2);
   }
   system((char *)cmd->data);
   exit(0);
  } else if (pid > 0) {
   close(pfd[1]);
   if (!timeout)
    timeout = EAD_CMD_TIMEOUT;

   stream = 1;
   break;
  }
  return 0;
 case 129:
  pid = fork();
  if (pid == 0) {

   fd = open("/dev/null", O_RDWR);
   if (fd > 0) {
    dup2(fd, 0);
    dup2(fd, 1);
    dup2(fd, 2);
   }
   system((char *)cmd->data);
   exit(0);
  } else if (pid > 0) {
   break;
  }
  return 0;
 default:
  return 0;
 }

 msg = &pktbuf->msg;
 cmddata = EAD_ENC_DATA(msg, cmd_data);

 if (stream) {
  int nfds, bytes;


  gettimeofday(&to, ((void*)0));
  memcpy(&tn, &to, sizeof(tn));
  tv.tv_usec = PCAP_TIMEOUT * 1000;
  tv.tv_sec = 0;
  do {
   cmddata->done = 0;
   FD_SET(pfd[0], &fds);
   nfds = select(pfd[0] + 1, &fds, ((void*)0), ((void*)0), &tv);
   bytes = 0;
   if (nfds > 0) {
    bytes = read(pfd[0], cmddata->data, 1024);
    if (bytes < 0)
     bytes = 0;
   }
   if (!bytes && !child_pending)
    break;
   DEBUG(3, "Sending %d bytes of console data, type=%d, timeout=%d\n", bytes, ntohl(msg->type), timeout);
   ead_encrypt_message(msg, sizeof(struct ead_msg_cmd_data) + bytes);
   ead_send_packet_clone(pkt);
   gettimeofday(&tn, ((void*)0));
  } while (tn.tv_sec < to.tv_sec + timeout);
  if (child_pending) {
   kill(pid, SIGKILL);
   return 0;
  }
 }
 cmddata->done = 1;
 ead_encrypt_message(msg, sizeof(struct ead_msg_cmd_data));

 return 1;
}
