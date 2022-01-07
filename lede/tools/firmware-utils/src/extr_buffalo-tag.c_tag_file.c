
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffalo_tag3 {int dummy; } ;
struct buffalo_tag2 {int dummy; } ;
struct buffalo_tag {int dummy; } ;
typedef int ssize_t ;


 int ERR (char*,...) ;
 scalar_t__ dhp ;
 int fixup_tag (unsigned char*,int) ;
 int fixup_tag2 (unsigned char*,int) ;
 int fixup_tag3 (unsigned char*,scalar_t__) ;
 int free (unsigned char*) ;
 scalar_t__* fsize ;
 scalar_t__ get_file_size (int ) ;
 int * ifname ;
 unsigned char* malloc (int) ;
 int num_files ;
 int ofname ;
 int read_file_to_buf (int ,unsigned char*,scalar_t__) ;
 int write_buf_to_file (int ,unsigned char*,int) ;

__attribute__((used)) static int tag_file(void)
{
 unsigned char *buf;
 ssize_t offset;
 ssize_t hdrlen;
 ssize_t buflen;
 int err;
 int ret = -1;
 int i;

 if (dhp)
  hdrlen = sizeof(struct buffalo_tag3);
 else if (num_files == 1)
  hdrlen = sizeof(struct buffalo_tag);
 else
  hdrlen = sizeof(struct buffalo_tag2);

 buflen = hdrlen;

 for (i = 0; i < num_files; i++) {
  fsize[i] = get_file_size(ifname[i]);
  if (fsize[i] < 0) {
   ERR("unable to get size of '%s'", ifname[i]);
   goto out;
  }
  buflen += fsize[i];
 }

 buf = malloc(buflen);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto out;
 }

 offset = hdrlen;
 for (i = 0; i < num_files; i++) {
  err = read_file_to_buf(ifname[i], buf + offset, fsize[i]);
  if (err) {
   ERR("unable to read from file '%s'", ifname[i]);
   goto free_buf;
  }

  offset += fsize[i];
 }

 if (dhp)
  fixup_tag3(buf, fsize[0] + 200);
 else if (num_files == 1)
  fixup_tag(buf, buflen);
 else
  fixup_tag2(buf, buflen);

 err = write_buf_to_file(ofname, buf, buflen);
 if (err) {
  ERR("unable to write to file '%s'", ofname);
  goto free_buf;
 }

 ret = 0;

free_buf:
 free(buf);
out:
 return ret;
}
