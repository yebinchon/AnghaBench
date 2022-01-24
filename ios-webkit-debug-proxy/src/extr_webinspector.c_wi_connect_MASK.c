#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  int /*<<< orphan*/  tv ;
typedef  void* time_t ;
struct timeval {int tv_sec; void* tv_usec; } ;
typedef  int /*<<< orphan*/ * plist_t ;
typedef  TYPE_1__* lockdownd_service_descriptor_t ;
typedef  int lockdownd_error_t ;
typedef  int /*<<< orphan*/ * lockdownd_client_t ;
typedef  int /*<<< orphan*/ * idevice_t ;
typedef  char* idevice_connection_t ;
struct TYPE_3__ {int ssl_enabled; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int INVALID_SOCKET ; 
 int LOCKDOWN_E_SUCCESS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,int*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC20 (char*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC21(const char *device_id, char **to_device_id,
    char **to_device_name, int *to_device_os_version,
    void **to_ssl_session, int recv_timeout) {
  int ret = -1;

  idevice_t phone = NULL;
  plist_t node = NULL;
  lockdownd_service_descriptor_t service = NULL;
  lockdownd_client_t client = NULL;
  idevice_connection_t connection = NULL;
  int fd = -1;
  SSL *ssl_session = NULL;

  // get phone
  if (FUNC10(&phone, device_id)) {
    FUNC3(stderr, "No device found, is it plugged in?\n");
    goto leave_cleanup;
  }

  // connect to lockdownd
  lockdownd_error_t ldret;
  if (LOCKDOWN_E_SUCCESS != (ldret = FUNC13(
        phone, &client, "ios_webkit_debug_proxy"))) {
    FUNC3(stderr, "Could not connect to lockdownd, error code %d. Exiting.\n", ldret);
    goto leave_cleanup;
  }

  // get device info
  if (to_device_id &&
      !FUNC14(client, NULL, "UniqueDeviceID", &node)) {
    FUNC18(node, to_device_id);
    FUNC17(node);
    node = NULL;
  }
  if (to_device_name &&
      !FUNC14(client, NULL, "DeviceName", &node)) {
    FUNC18(node, to_device_name);
    FUNC17(node);
    node = NULL;
  }
  if (to_device_os_version &&
      !FUNC14(client, NULL, "ProductVersion", &node)) {
    int vers[3] = {0, 0, 0};
    char *s_version = NULL;
    FUNC18(node, &s_version);
    if (s_version && FUNC20(s_version, "%d.%d.%d",
          &vers[0], &vers[1], &vers[2]) >= 2) {
      *to_device_os_version = ((vers[0] & 0xFF) << 16) |
                              ((vers[1] & 0xFF) << 8)  |
                               (vers[2] & 0xFF);
    } else {
      *to_device_os_version = 0;
    }
    FUNC4(s_version);
    FUNC17(node);
  }

  // start webinspector, get port
  if (FUNC15(client, "com.apple.webinspector", &service) ||
      !service->port) {
    FUNC16("Could not start com.apple.webinspector!");
    goto leave_cleanup;
  }

  // connect to webinspector
  if (FUNC5(phone, service->port, &connection)) {
    FUNC16("idevice_connect failed!");
    goto leave_cleanup;
  }

  // enable ssl
  if (service->ssl_enabled == 1) {
    if (!to_ssl_session || FUNC6(connection) ||
        FUNC8(connection, &ssl_session)) {
      FUNC16("ssl connection failed!");
      goto leave_cleanup;
    }
    *to_ssl_session = ssl_session;
  }

  if (client) {
    // not needed anymore
    FUNC12(client);
    client = NULL;
  }

  // extract the connection fd
  if (FUNC7(connection, &fd)) {
    FUNC16("Unable to get connection file descriptor.");
    goto leave_cleanup;
  }

  if (recv_timeout < 0) {
#ifdef WIN32
    u_long nb = 1;
    if (ioctlsocket(fd, FIONBIO, &nb)) {
      fprintf(stderr, "webinspector: could not set socket to non-blocking");
    }
#else
    int opts = FUNC2(fd, F_GETFL);
    if (!opts || FUNC2(fd, F_SETFL, (opts | O_NONBLOCK)) < 0) {
      FUNC16("Could not set socket to non-blocking");
      goto leave_cleanup;
    }
#endif
  } else {
    long millis = (recv_timeout > 0 ? recv_timeout : 5000);
    struct timeval tv;
    tv.tv_sec = (time_t) (millis / 1000);
    tv.tv_usec = (time_t) ((millis - (tv.tv_sec * 1000)) * 1000);
    if (FUNC19(fd, SOL_SOCKET, SO_RCVTIMEO, (char *)&tv,
          sizeof(tv))) {
      FUNC16("Could not set socket receive timeout");
      goto leave_cleanup;
    }
  }

  // success
  ret = fd;

leave_cleanup:
#ifdef WIN32
  if (ret < 0 && fd != INVALID_SOCKET) {
    closesocket(fd);
  }
#else
  if (ret < 0 && fd > 0) {
    FUNC0(fd);
  }
#endif
  // don't call usbmuxd_disconnect(fd)!
  //idevice_disconnect(connection);
  FUNC4(connection);
  FUNC12(client);
  FUNC9(phone);
  return ret;
}