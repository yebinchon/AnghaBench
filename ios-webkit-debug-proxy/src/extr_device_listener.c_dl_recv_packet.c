
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
typedef int * plist_t ;
typedef int ht_t ;
typedef TYPE_1__* dl_t ;
typedef int dl_status ;
typedef TYPE_2__* dl_private_t ;
struct TYPE_7__ {int device_num_to_device_id; } ;
struct TYPE_6__ {int (* on_detach ) (TYPE_1__*,char*,int) ;int (* on_attach ) (TYPE_1__*,char*,int) ;TYPE_2__* private_state; } ;


 int DL_ERROR ;
 int DL_SUCCESS ;
 int HT_KEY (scalar_t__) ;
 scalar_t__ PLIST_STRING ;
 size_t TYPE_PLIST ;
 size_t dl_sscanf_uint32 (char const*) ;
 int free (char*) ;
 int ht_put (int ,int ,char*) ;
 scalar_t__ ht_remove (int ,int ) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int * plist_dict_get_item (int *,char*) ;
 int plist_free (int *) ;
 int plist_from_xml (char const*,size_t,int **) ;
 scalar_t__ plist_get_node_type (int *) ;
 int plist_get_string_val (int *,char**) ;
 int plist_get_uint_val (int *,scalar_t__*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int stub1 (TYPE_1__*,char*,int) ;
 int stub2 (TYPE_1__*,char*,int) ;

dl_status dl_recv_packet(dl_t self, const char *packet, size_t length) {
  dl_private_t my = self->private_state;

  const char *tail = packet;
  uint32_t len = dl_sscanf_uint32(tail);
  tail += 4;
  if (len != length || len < 16) {
    return DL_ERROR;
  }
  uint32_t version = dl_sscanf_uint32(tail);
  tail += 4;
  uint32_t type = dl_sscanf_uint32(tail);
  tail += 4;
  (void)dl_sscanf_uint32(tail);
  tail += 4;
  const char *xml = tail;
  size_t xml_length = length - 16;

  if (version != 1 || type != TYPE_PLIST) {
    return DL_SUCCESS;
  }

  plist_t dict = ((void*)0);
  plist_from_xml(xml, xml_length, &dict);
  char *message = ((void*)0);
  if (dict) {
    plist_t node = plist_dict_get_item(dict, "MessageType");
    if (plist_get_node_type(node) == PLIST_STRING) {
      plist_get_string_val(node, &message);
    }
  }

  dl_status ret = DL_ERROR;
  if (!message) {
    ret = DL_ERROR;
  } else if (!strcmp(message, "Result")) {
    plist_t node = plist_dict_get_item(dict, "Number");
    if (node) {
      uint64_t value = 0;
      plist_get_uint_val(node, &value);

      ret = (value ? DL_ERROR : DL_SUCCESS);
    }
  } else if (!strcmp(message, "Attached")) {
    plist_t props = plist_dict_get_item(dict, "Properties");
    if (props) {
      uint64_t device_num = 0;
      plist_t node = plist_dict_get_item(props, "DeviceID");
      plist_get_uint_val(node, &device_num);

      uint64_t product_id = 0;
      node = plist_dict_get_item(props, "ProductID");
      plist_get_uint_val(node, &product_id);

      char *device_id = ((void*)0);
      node = plist_dict_get_item(props, "SerialNumber");
      if (node) {
        plist_get_string_val(node, &device_id);

        if (device_id && strlen(device_id) == 24) {
          char *new_device_id = malloc(sizeof(char) * 26);

          memcpy(new_device_id, device_id, 8);
          memcpy(new_device_id + 9, device_id + 8, 17);
          new_device_id[8] = '-';

          free(device_id);
          device_id = new_device_id;
        }
      }

      uint64_t location = 0;
      node = plist_dict_get_item(props, "LocationID");
      plist_get_uint_val(node, &location);

      ht_t d_ht = my->device_num_to_device_id;
      ht_put(d_ht, HT_KEY(device_num), device_id);
      ret = self->on_attach(self, device_id, (int)device_num);
    }
  } else if (strcmp(message, "Detached") == 0) {
    plist_t node = plist_dict_get_item(dict, "DeviceID");
    if (node) {
      uint64_t device_num = 0;
      plist_get_uint_val(node, &device_num);

      ht_t d_ht = my->device_num_to_device_id;
      char *device_id = (char *)ht_remove(d_ht, HT_KEY(device_num));
      if (device_id) {
        ret = self->on_detach(self, device_id, (int)device_num);
        free(device_id);
      }
    }
  }
  free(message);
  plist_free(dict);
  return ret;
}
