
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int plist_t ;
typedef TYPE_1__* dl_t ;
typedef int dl_status ;
struct TYPE_4__ {int (* send_packet ) (TYPE_1__*,char*,size_t) ;} ;


 int DL_ERROR ;
 int TYPE_PLIST ;
 scalar_t__ calloc (size_t,int) ;
 char* dl_sprintf_uint32 (char*,int) ;
 int free (char*) ;
 int perror (char*) ;
 int plist_dict_get_size (int ) ;
 int plist_dict_set_item (int ,char*,int ) ;
 int plist_free (int ) ;
 int plist_new_dict () ;
 int plist_new_string (char*) ;
 int plist_to_xml (int ,char**,int*) ;
 int strncpy (char*,char*,int) ;
 int stub1 (TYPE_1__*,char*,size_t) ;

dl_status dl_start(dl_t self) {


  plist_t dict = plist_new_dict();
  plist_dict_set_item(dict, "ClientVersionString", plist_new_string(
        "device_listener"));
  if (plist_dict_get_size(dict) != 1) {
    perror("Detected an old copy of libplist?!  For a fix, see:\n"
        "https://github.com/libimobiledevice/libimobiledevice/issues/"
        "68#issuecomment-38994545");
    return DL_ERROR;
  }
  plist_dict_set_item(dict, "MessageType", plist_new_string("Listen"));
  plist_dict_set_item(dict, "ProgName", plist_new_string("libusbmuxd"));
  char *xml = ((void*)0);
  uint32_t xml_length = 0;
  plist_to_xml(dict, &xml, &xml_length);
  plist_free(dict);

  size_t length = 16 + xml_length;
  char *packet = (char *)calloc(length, sizeof(char));
  if (!packet) {
    return DL_ERROR;
  }
  char *tail = packet;
  tail = dl_sprintf_uint32(tail, length);
  tail = dl_sprintf_uint32(tail, 1);
  tail = dl_sprintf_uint32(tail, TYPE_PLIST);
  tail = dl_sprintf_uint32(tail, 1);
  strncpy(tail, xml, xml_length);
  free(xml);

  dl_status ret = self->send_packet(self, packet, length);
  free(packet);
  return ret;
}
