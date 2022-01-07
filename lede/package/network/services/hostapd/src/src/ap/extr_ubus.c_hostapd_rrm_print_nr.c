
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ssid_len; int ssid; } ;
struct hostapd_neighbor_entry {int nr; TYPE_1__ ssid; int bssid; } ;


 int MAC2STR (int ) ;
 int MACSTR ;
 int b ;
 int blobmsg_add_string_buffer (int *) ;
 char* blobmsg_alloc_string_buffer (int *,char*,int) ;
 int blobmsg_printf (int *,char*,int ,int ) ;
 int memcpy (char*,int ,int) ;
 int wpa_snprintf_hex (char*,int,int ,int) ;
 int wpabuf_head_u8 (int ) ;
 int wpabuf_len (int ) ;

__attribute__((used)) static void
hostapd_rrm_print_nr(struct hostapd_neighbor_entry *nr)
{
 const u8 *data;
 char *str;
 int len;

 blobmsg_printf(&b, "", MACSTR, MAC2STR(nr->bssid));

 str = blobmsg_alloc_string_buffer(&b, "", nr->ssid.ssid_len + 1);
 memcpy(str, nr->ssid.ssid, nr->ssid.ssid_len);
 str[nr->ssid.ssid_len] = 0;
 blobmsg_add_string_buffer(&b);

 len = wpabuf_len(nr->nr);
 str = blobmsg_alloc_string_buffer(&b, "", 2 * len + 1);
 wpa_snprintf_hex(str, 2 * len + 1, wpabuf_head_u8(nr->nr), len);
 blobmsg_add_string_buffer(&b);
}
