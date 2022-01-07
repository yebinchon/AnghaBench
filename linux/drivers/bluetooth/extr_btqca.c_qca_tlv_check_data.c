
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tlv_type_patch {int download_mode; int format_version; int signature; int reserved1; int entry; int reserved2; int patch_version; int rom_build; int product_id; int data_length; int total_size; } ;
struct tlv_type_nvm {int* data; int tag_len; int tag_id; } ;
struct tlv_type_hdr {int * data; int type_len; } ;
struct rome_config {int dnld_mode; int dnld_type; int type; int user_baud_rate; } ;
struct firmware {scalar_t__ data; } ;


 int BT_DBG (char*,int) ;
 int BT_ERR (char*,int) ;


 void* ROME_SKIP_EVT_NONE ;


 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void qca_tlv_check_data(struct rome_config *config,
    const struct firmware *fw)
{
 const u8 *data;
 u32 type_len;
 u16 tag_id, tag_len;
 int idx, length;
 struct tlv_type_hdr *tlv;
 struct tlv_type_patch *tlv_patch;
 struct tlv_type_nvm *tlv_nvm;

 tlv = (struct tlv_type_hdr *)fw->data;

 type_len = le32_to_cpu(tlv->type_len);
 length = (type_len >> 8) & 0x00ffffff;

 BT_DBG("TLV Type\t\t : 0x%x", type_len & 0x000000ff);
 BT_DBG("Length\t\t : %d bytes", length);

 config->dnld_mode = ROME_SKIP_EVT_NONE;
 config->dnld_type = ROME_SKIP_EVT_NONE;

 switch (config->type) {
 case 128:
  tlv_patch = (struct tlv_type_patch *)tlv->data;







  config->dnld_mode = tlv_patch->download_mode;
  config->dnld_type = config->dnld_mode;

  BT_DBG("Total Length           : %d bytes",
         le32_to_cpu(tlv_patch->total_size));
  BT_DBG("Patch Data Length      : %d bytes",
         le32_to_cpu(tlv_patch->data_length));
  BT_DBG("Signing Format Version : 0x%x",
         tlv_patch->format_version);
  BT_DBG("Signature Algorithm    : 0x%x",
         tlv_patch->signature);
  BT_DBG("Download mode          : 0x%x",
         tlv_patch->download_mode);
  BT_DBG("Reserved               : 0x%x",
         tlv_patch->reserved1);
  BT_DBG("Product ID             : 0x%04x",
         le16_to_cpu(tlv_patch->product_id));
  BT_DBG("Rom Build Version      : 0x%04x",
         le16_to_cpu(tlv_patch->rom_build));
  BT_DBG("Patch Version          : 0x%04x",
         le16_to_cpu(tlv_patch->patch_version));
  BT_DBG("Reserved               : 0x%x",
         le16_to_cpu(tlv_patch->reserved2));
  BT_DBG("Patch Entry Address    : 0x%x",
         le32_to_cpu(tlv_patch->entry));
  break;

 case 129:
  idx = 0;
  data = tlv->data;
  while (idx < length) {
   tlv_nvm = (struct tlv_type_nvm *)(data + idx);

   tag_id = le16_to_cpu(tlv_nvm->tag_id);
   tag_len = le16_to_cpu(tlv_nvm->tag_len);


   switch (tag_id) {
   case 130:




    tlv_nvm->data[0] |= 0x80;


    tlv_nvm->data[2] = config->user_baud_rate;

    break;

   case 131:



    tlv_nvm->data[0] |= 0x01;

    break;
   }

   idx += (sizeof(u16) + sizeof(u16) + 8 + tag_len);
  }
  break;

 default:
  BT_ERR("Unknown TLV type %d", config->type);
  break;
 }
}
