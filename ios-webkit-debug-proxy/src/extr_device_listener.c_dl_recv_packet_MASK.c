#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/ * plist_t ;
typedef  int /*<<< orphan*/  ht_t ;
typedef  TYPE_1__* dl_t ;
typedef  int /*<<< orphan*/  dl_status ;
typedef  TYPE_2__* dl_private_t ;
struct TYPE_7__ {int /*<<< orphan*/  device_num_to_device_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* on_detach ) (TYPE_1__*,char*,int) ;int /*<<< orphan*/  (* on_attach ) (TYPE_1__*,char*,int) ;TYPE_2__* private_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_ERROR ; 
 int /*<<< orphan*/  DL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ PLIST_STRING ; 
 size_t TYPE_PLIST ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,size_t,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*,int) ; 

dl_status FUNC17(dl_t self, const char *packet, size_t length) {
  dl_private_t my = self->private_state;

  const char *tail = packet;
  uint32_t len = FUNC1(tail);
  tail += 4;
  if (len != length || len < 16) {
    return DL_ERROR;
  }
  uint32_t version = FUNC1(tail);
  tail += 4;
  uint32_t type = FUNC1(tail);
  tail += 4;
  (void)FUNC1(tail);
  tail += 4;
  const char *xml = tail;
  size_t xml_length = length - 16;

  if (version != 1 || type != TYPE_PLIST) {
    return DL_SUCCESS; // ignore?
  }

  plist_t dict = NULL;
  FUNC9(xml, xml_length, &dict);
  char *message = NULL;
  if (dict) {
    plist_t node = FUNC7(dict, "MessageType");
    if (FUNC10(node) == PLIST_STRING) {
      FUNC11(node, &message);
    }
  }

  dl_status ret = DL_ERROR;
  if (!message) {
    ret = DL_ERROR;
  } else if (!FUNC13(message, "Result")) {
    plist_t node = FUNC7(dict, "Number");
    if (node) {
      uint64_t value = 0;
      FUNC12(node, &value);
      // just an ack of our Listen?
      ret = (value ? DL_ERROR : DL_SUCCESS);
    }
  } else if (!FUNC13(message, "Attached")) {
    plist_t props = FUNC7(dict, "Properties");
    if (props) {
      uint64_t device_num = 0;
      plist_t node = FUNC7(props, "DeviceID");
      FUNC12(node, &device_num);

      uint64_t product_id = 0;
      node = FUNC7(props, "ProductID");
      FUNC12(node, &product_id);

      char *device_id = NULL;
      node = FUNC7(props, "SerialNumber");
      if (node) {
        FUNC11(node, &device_id);

        if (device_id && FUNC14(device_id) == 24) {
          char *new_device_id = FUNC5(sizeof(char) * 26);

          FUNC6(new_device_id, device_id, 8);
          FUNC6(new_device_id + 9, device_id + 8, 17);
          new_device_id[8] = '-';

          FUNC2(device_id);
          device_id = new_device_id;
        }
      }

      uint64_t location = 0;
      node = FUNC7(props, "LocationID");
      FUNC12(node, &location);

      ht_t d_ht = my->device_num_to_device_id;
      FUNC3(d_ht, FUNC0(device_num), device_id);
      ret = self->on_attach(self, device_id, (int)device_num);
    }
  } else if (FUNC13(message, "Detached") == 0) {
    plist_t node = FUNC7(dict, "DeviceID");
    if (node) {
      uint64_t device_num = 0;
      FUNC12(node, &device_num);

      ht_t d_ht = my->device_num_to_device_id;
      char *device_id = (char *)FUNC4(d_ht, FUNC0(device_num));
      if (device_id) {
        ret = self->on_detach(self, device_id, (int)device_num);
        FUNC2(device_id);
      }
    }
  }
  FUNC2(message);
  FUNC8(dict);
  return ret;
}