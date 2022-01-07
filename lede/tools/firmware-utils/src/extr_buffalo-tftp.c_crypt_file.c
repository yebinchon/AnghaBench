
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int ERR (char*,...) ;
 int crypt_header (unsigned char*,int,int ,int ) ;
 int crypt_key1 ;
 int crypt_key2 ;
 scalar_t__ do_decrypt ;
 int free (unsigned char*) ;
 scalar_t__ get_file_size (int ) ;
 int ifname ;
 unsigned char* malloc (scalar_t__) ;
 int ofname ;
 int read_file_to_buf (int ,unsigned char*,scalar_t__) ;
 int write_buf_to_file (int ,unsigned char*,scalar_t__) ;

__attribute__((used)) static int crypt_file(void)
{
 unsigned char *buf = ((void*)0);
 ssize_t src_len;
 int err;
 int ret = -1;

 src_len = get_file_size(ifname);
 if (src_len < 0) {
  ERR("unable to get size of '%s'", ifname);
  goto out;
 }

 buf = malloc(src_len);
 if (buf == ((void*)0)) {
  ERR("no memory for the buffer");
  goto out;
 }

 err = read_file_to_buf(ifname, buf, src_len);
 if (err) {
  ERR("unable to read from file '%s'", ifname);
  goto out;
 }

 if (do_decrypt)
  crypt_header(buf, 512, crypt_key2, crypt_key1);
 else
  crypt_header(buf, 512, crypt_key1, crypt_key2);

 err = write_buf_to_file(ofname, buf, src_len);
 if (err) {
  ERR("unable to write to file '%s'", ofname);
  goto out;
 }

 ret = 0;

out:
 free(buf);
 return ret;
}
