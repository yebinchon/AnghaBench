#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  plist_t ;
typedef  TYPE_1__* dl_t ;
typedef  int /*<<< orphan*/  dl_status ;
struct TYPE_4__ {int /*<<< orphan*/  (* send_packet ) (TYPE_1__*,char*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DL_ERROR ; 
 int TYPE_PLIST ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char**,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,size_t) ; 

dl_status FUNC12(dl_t self) {
  // Assume usbmuxd supports proto_version 1.  If not then we'd need to
  // send a binary listen request, check for failure, then retry this:
  plist_t dict = FUNC7();
  FUNC5(dict, "ClientVersionString", FUNC8(
        "device_listener"));
  if (FUNC4(dict) != 1) {
    FUNC3("Detected an old copy of libplist?!  For a fix, see:\n"
        "https://github.com/libimobiledevice/libimobiledevice/issues/"
        "68#issuecomment-38994545");
    return DL_ERROR;
  }
  FUNC5(dict, "MessageType", FUNC8("Listen"));
  FUNC5(dict, "ProgName", FUNC8("libusbmuxd"));
  char *xml = NULL;
  uint32_t xml_length = 0;
  FUNC9(dict, &xml, &xml_length);
  FUNC6(dict);

  size_t length = 16 + xml_length;
  char *packet = (char *)FUNC0(length, sizeof(char));
  if (!packet) {
    return DL_ERROR;
  }
  char *tail = packet;
  tail = FUNC1(tail, length);
  tail = FUNC1(tail, 1); // version: 1
  tail = FUNC1(tail, TYPE_PLIST); // type: plist
  tail = FUNC1(tail, 1); // tag: 1
  FUNC10(tail, xml, xml_length);
  FUNC2(xml);

  dl_status ret = self->send_packet(self, packet, length);
  FUNC2(packet);
  return ret;
}