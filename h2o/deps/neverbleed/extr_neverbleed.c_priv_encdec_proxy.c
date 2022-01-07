
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_neverbleed_thread_data_t {int fd; } ;
struct st_neverbleed_rsa_exdata_t {int key_index; } ;
struct expbuf_t {int * member_0; } ;
typedef int RSA ;


 int dief (char*) ;
 scalar_t__ errno ;
 int expbuf_dispose (struct expbuf_t*) ;
 int expbuf_push_bytes (struct expbuf_t*,unsigned char const*,int) ;
 int expbuf_push_num (struct expbuf_t*,int) ;
 int expbuf_push_str (struct expbuf_t*,char const*) ;
 scalar_t__ expbuf_read (struct expbuf_t*,int ) ;
 unsigned char* expbuf_shift_bytes (struct expbuf_t*,size_t*) ;
 scalar_t__ expbuf_shift_num (struct expbuf_t*,size_t*) ;
 scalar_t__ expbuf_write (struct expbuf_t*,int ) ;
 int get_privsep_data (int *,struct st_neverbleed_rsa_exdata_t**,struct st_neverbleed_thread_data_t**) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int priv_encdec_proxy(const char *cmd, int flen, const unsigned char *from, unsigned char *_to, RSA *rsa, int padding)
{
    struct st_neverbleed_rsa_exdata_t *exdata;
    struct st_neverbleed_thread_data_t *thdata;
    struct expbuf_t buf = {((void*)0)};
    size_t ret;
    unsigned char *to;
    size_t tolen;

    get_privsep_data(rsa, &exdata, &thdata);

    expbuf_push_str(&buf, cmd);
    expbuf_push_bytes(&buf, from, flen);
    expbuf_push_num(&buf, exdata->key_index);
    expbuf_push_num(&buf, padding);
    if (expbuf_write(&buf, thdata->fd) != 0)
        dief(errno != 0 ? "write error" : "connection closed by daemon");
    expbuf_dispose(&buf);

    if (expbuf_read(&buf, thdata->fd) != 0)
        dief(errno != 0 ? "read error" : "connection closed by daemon");
    if (expbuf_shift_num(&buf, &ret) != 0 || (to = expbuf_shift_bytes(&buf, &tolen)) == ((void*)0)) {
        errno = 0;
        dief("failed to parse response");
    }
    memcpy(_to, to, tolen);
    expbuf_dispose(&buf);

    return (int)ret;
}
