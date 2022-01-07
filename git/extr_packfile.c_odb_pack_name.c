
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 int get_object_directory () ;
 int hash_to_hex (unsigned char const*) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ,char const*) ;
 int strbuf_reset (struct strbuf*) ;

char *odb_pack_name(struct strbuf *buf,
      const unsigned char *hash,
      const char *ext)
{
 strbuf_reset(buf);
 strbuf_addf(buf, "%s/pack/pack-%s.%s", get_object_directory(),
      hash_to_hex(hash), ext);
 return buf->buf;
}
