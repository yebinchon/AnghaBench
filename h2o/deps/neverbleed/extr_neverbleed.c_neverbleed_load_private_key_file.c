
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_neverbleed_thread_data_t {int fd; } ;
struct expbuf_t {int * member_0; } ;
typedef int neverbleed_t ;
typedef int SSL_CTX ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 int NEVERBLEED_ERRBUF_SIZE ;


 int SSL_CTX_use_PrivateKey (int *,int *) ;
 int * create_pkey (int *,size_t,char*,char*) ;
 int dief (char*) ;
 int * ecdsa_create_pkey (int *,size_t,size_t,char*) ;
 scalar_t__ errno ;
 int expbuf_dispose (struct expbuf_t*) ;
 int expbuf_push_str (struct expbuf_t*,char const*) ;
 scalar_t__ expbuf_read (struct expbuf_t*,int ) ;
 scalar_t__ expbuf_shift_num (struct expbuf_t*,size_t*) ;
 char* expbuf_shift_str (struct expbuf_t*) ;
 scalar_t__ expbuf_write (struct expbuf_t*,int ) ;
 struct st_neverbleed_thread_data_t* get_thread_data (int *) ;
 int snprintf (char*,int ,char*,...) ;

int neverbleed_load_private_key_file(neverbleed_t *nb, SSL_CTX *ctx, const char *fn, char *errbuf)
{
    struct st_neverbleed_thread_data_t *thdata = get_thread_data(nb);
    struct expbuf_t buf = {((void*)0)};
    int ret = 1;
    size_t index, type;
    EVP_PKEY *pkey;

    expbuf_push_str(&buf, "load_key");
    expbuf_push_str(&buf, fn);
    if (expbuf_write(&buf, thdata->fd) != 0)
        dief(errno != 0 ? "write error" : "connection closed by daemon");
    expbuf_dispose(&buf);

    if (expbuf_read(&buf, thdata->fd) != 0)
        dief(errno != 0 ? "read error" : "connection closed by daemon");
    if (expbuf_shift_num(&buf, &type) != 0 || expbuf_shift_num(&buf, &index) != 0) {
        errno = 0;
        dief("failed to parse response");
    }

    switch (type) {
    case 128: {
        char *estr, *nstr;

        if ((estr = expbuf_shift_str(&buf)) == ((void*)0) || (nstr = expbuf_shift_str(&buf)) == ((void*)0)) {
            errno = 0;
            dief("failed to parse response");
        }
        pkey = create_pkey(nb, index, estr, nstr);
        break;
    }
    default: {
        char *errstr;

        if ((errstr = expbuf_shift_str(&buf)) == ((void*)0)) {
            errno = 0;
            dief("failed to parse response");
        }

        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "%s", errstr);
        return -1;
    }
    }

    expbuf_dispose(&buf);


    if (SSL_CTX_use_PrivateKey(ctx, pkey) != 1) {
        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "SSL_CTX_use_PrivateKey failed");
        ret = 0;
    }

    EVP_PKEY_free(pkey);
    return ret;
}
