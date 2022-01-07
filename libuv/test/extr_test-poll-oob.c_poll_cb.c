
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_poll_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 int MSG_OOB ;
 int UV_PRIORITIZED ;
 int UV_READABLE ;
 int UV_WRITABLE ;
 int cli_pr_check ;
 int cli_rd_check ;
 int client_fd ;
 scalar_t__ errno ;
 int got_eagain () ;
 int memset (char*,int ,int) ;
 int * poll_req ;
 int recv (int,char**,int,int ) ;
 int send (int,char*,int,int ) ;
 int server_fd ;
 int srv_rd_check ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ uv_fileno (int *,int*) ;
 scalar_t__ uv_poll_start (int *,int,void (*) (int *,int,int)) ;
 scalar_t__ uv_poll_stop (int *) ;

__attribute__((used)) static void poll_cb(uv_poll_t* handle, int status, int events) {
  char buffer[5];
  int n;
  int fd;

  ASSERT(0 == uv_fileno((uv_handle_t*)handle, &fd));
  memset(buffer, 0, 5);

  if (events & UV_PRIORITIZED) {
    do
      n = recv(client_fd, &buffer, 5, MSG_OOB);
    while (n == -1 && errno == EINTR);
    ASSERT(n >= 0 || errno != EINVAL);
    cli_pr_check = 1;
    ASSERT(0 == uv_poll_stop(&poll_req[0]));
    ASSERT(0 == uv_poll_start(&poll_req[0],
                              UV_READABLE | UV_WRITABLE,
                              poll_cb));
  }
  if (events & UV_READABLE) {
    if (fd == client_fd) {
      do
        n = recv(client_fd, &buffer, 5, 0);
      while (n == -1 && errno == EINTR);
      ASSERT(n >= 0 || errno != EINVAL);
      if (cli_rd_check == 1) {
        ASSERT(strncmp(buffer, "world", n) == 0);
        ASSERT(5 == n);
        cli_rd_check = 2;
      }
      if (cli_rd_check == 0) {
        ASSERT(n == 4);
        ASSERT(strncmp(buffer, "hello", n) == 0);
        cli_rd_check = 1;
        do {
          do
            n = recv(server_fd, &buffer, 5, 0);
          while (n == -1 && errno == EINTR);
          if (n > 0) {
            ASSERT(n == 5);
            ASSERT(strncmp(buffer, "world", n) == 0);
            cli_rd_check = 2;
          }
        } while (n > 0);

        ASSERT(got_eagain());
      }
    }
    if (fd == server_fd) {
      do
        n = recv(server_fd, &buffer, 3, 0);
      while (n == -1 && errno == EINTR);
      ASSERT(n >= 0 || errno != EINVAL);
      ASSERT(3 == n);
      ASSERT(strncmp(buffer, "foo", n) == 0);
      srv_rd_check = 1;
      uv_poll_stop(&poll_req[1]);
    }
  }
  if (events & UV_WRITABLE) {
    do {
      n = send(client_fd, "foo", 3, 0);
    } while (n < 0 && errno == EINTR);
    ASSERT(3 == n);
  }
}
