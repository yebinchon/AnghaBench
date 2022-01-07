
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_priv {char* data; } ;
typedef int loff_t ;


 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static void firmware_rw_data(struct fw_priv *fw_priv, char *buffer,
      loff_t offset, size_t count, bool read)
{
 if (read)
  memcpy(buffer, fw_priv->data + offset, count);
 else
  memcpy(fw_priv->data + offset, buffer, count);
}
