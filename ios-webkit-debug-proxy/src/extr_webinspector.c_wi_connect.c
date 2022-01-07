
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int tv ;
typedef void* time_t ;
struct timeval {int tv_sec; void* tv_usec; } ;
typedef int * plist_t ;
typedef TYPE_1__* lockdownd_service_descriptor_t ;
typedef int lockdownd_error_t ;
typedef int * lockdownd_client_t ;
typedef int * idevice_t ;
typedef char* idevice_connection_t ;
struct TYPE_3__ {int ssl_enabled; int port; } ;
typedef int SSL ;


 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int INVALID_SOCKET ;
 int LOCKDOWN_E_SUCCESS ;
 int O_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int close (int) ;
 int closesocket (int) ;
 int fcntl (int,int ,...) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ idevice_connect (int *,int ,char**) ;
 scalar_t__ idevice_connection_enable_ssl (char*) ;
 scalar_t__ idevice_connection_get_fd (char*,int*) ;
 scalar_t__ idevice_connection_get_ssl_session (char*,int **) ;
 int idevice_free (int *) ;
 scalar_t__ idevice_new (int **,char const*) ;
 scalar_t__ ioctlsocket (int,int ,int*) ;
 int lockdownd_client_free (int *) ;
 int lockdownd_client_new_with_handshake (int *,int **,char*) ;
 int lockdownd_get_value (int *,int *,char*,int **) ;
 scalar_t__ lockdownd_start_service (int *,char*,TYPE_1__**) ;
 int perror (char*) ;
 int plist_free (int *) ;
 int plist_get_string_val (int *,char**) ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;
 int sscanf (char*,char*,int*,int*,int*) ;
 int stderr ;

int wi_connect(const char *device_id, char **to_device_id,
    char **to_device_name, int *to_device_os_version,
    void **to_ssl_session, int recv_timeout) {
  int ret = -1;

  idevice_t phone = ((void*)0);
  plist_t node = ((void*)0);
  lockdownd_service_descriptor_t service = ((void*)0);
  lockdownd_client_t client = ((void*)0);
  idevice_connection_t connection = ((void*)0);
  int fd = -1;
  SSL *ssl_session = ((void*)0);


  if (idevice_new(&phone, device_id)) {
    fprintf(stderr, "No device found, is it plugged in?\n");
    goto leave_cleanup;
  }


  lockdownd_error_t ldret;
  if (LOCKDOWN_E_SUCCESS != (ldret = lockdownd_client_new_with_handshake(
        phone, &client, "ios_webkit_debug_proxy"))) {
    fprintf(stderr, "Could not connect to lockdownd, error code %d. Exiting.\n", ldret);
    goto leave_cleanup;
  }


  if (to_device_id &&
      !lockdownd_get_value(client, ((void*)0), "UniqueDeviceID", &node)) {
    plist_get_string_val(node, to_device_id);
    plist_free(node);
    node = ((void*)0);
  }
  if (to_device_name &&
      !lockdownd_get_value(client, ((void*)0), "DeviceName", &node)) {
    plist_get_string_val(node, to_device_name);
    plist_free(node);
    node = ((void*)0);
  }
  if (to_device_os_version &&
      !lockdownd_get_value(client, ((void*)0), "ProductVersion", &node)) {
    int vers[3] = {0, 0, 0};
    char *s_version = ((void*)0);
    plist_get_string_val(node, &s_version);
    if (s_version && sscanf(s_version, "%d.%d.%d",
          &vers[0], &vers[1], &vers[2]) >= 2) {
      *to_device_os_version = ((vers[0] & 0xFF) << 16) |
                              ((vers[1] & 0xFF) << 8) |
                               (vers[2] & 0xFF);
    } else {
      *to_device_os_version = 0;
    }
    free(s_version);
    plist_free(node);
  }


  if (lockdownd_start_service(client, "com.apple.webinspector", &service) ||
      !service->port) {
    perror("Could not start com.apple.webinspector!");
    goto leave_cleanup;
  }


  if (idevice_connect(phone, service->port, &connection)) {
    perror("idevice_connect failed!");
    goto leave_cleanup;
  }


  if (service->ssl_enabled == 1) {
    if (!to_ssl_session || idevice_connection_enable_ssl(connection) ||
        idevice_connection_get_ssl_session(connection, &ssl_session)) {
      perror("ssl connection failed!");
      goto leave_cleanup;
    }
    *to_ssl_session = ssl_session;
  }

  if (client) {

    lockdownd_client_free(client);
    client = ((void*)0);
  }


  if (idevice_connection_get_fd(connection, &fd)) {
    perror("Unable to get connection file descriptor.");
    goto leave_cleanup;
  }

  if (recv_timeout < 0) {






    int opts = fcntl(fd, F_GETFL);
    if (!opts || fcntl(fd, F_SETFL, (opts | O_NONBLOCK)) < 0) {
      perror("Could not set socket to non-blocking");
      goto leave_cleanup;
    }

  } else {
    long millis = (recv_timeout > 0 ? recv_timeout : 5000);
    struct timeval tv;
    tv.tv_sec = (time_t) (millis / 1000);
    tv.tv_usec = (time_t) ((millis - (tv.tv_sec * 1000)) * 1000);
    if (setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, (char *)&tv,
          sizeof(tv))) {
      perror("Could not set socket receive timeout");
      goto leave_cleanup;
    }
  }


  ret = fd;

leave_cleanup:





  if (ret < 0 && fd > 0) {
    close(fd);
  }



  free(connection);
  lockdownd_client_free(client);
  idevice_free(phone);
  return ret;
}
