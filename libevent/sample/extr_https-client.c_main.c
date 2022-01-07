
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uri ;
struct evkeyvalq {int dummy; } ;
struct evhttp_uri {int dummy; } ;
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct event_base {int dummy; } ;
struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int buf ;
typedef int X509_STORE ;
typedef int WSADATA ;
typedef int WORD ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int FILE ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int BEV_OPT_DEFER_CALLBACKS ;
 int BUFFEREVENT_SSL_CONNECTING ;
 int CRYPTO_cleanup_all_ex_data () ;
 int ERR_free_strings () ;
 int ERR_load_crypto_strings () ;
 int ERR_remove_state (int ) ;
 int ERR_remove_thread_state (int *) ;
 int EVHTTP_REQ_GET ;
 int EVHTTP_REQ_POST ;
 int EVP_cleanup () ;
 int MAKEWORD (int,int) ;
 int OpenSSL_add_all_algorithms () ;
 int RAND_poll () ;
 int SSL_COMP_get_compression_methods () ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_get_cert_store (int *) ;
 int SSL_CTX_load_verify_locations (int *,char const*,int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_cert_verify_callback (int *,int ,void*) ;
 int SSL_CTX_set_verify (int *,int ,int *) ;
 int SSL_VERIFY_PEER ;
 int SSL_free (int *) ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int * SSL_new (int *) ;
 int SSL_set_tlsext_host_name (int *,char const*) ;
 int SSLv23_method () ;
 int WSACleanup () ;
 int WSAStartup (int ,int *) ;
 int X509_STORE_set_default_paths (int *) ;
 scalar_t__ add_cert_for_store (int *,char*) ;
 int atoi (char*) ;
 int bufferevent_openssl_set_allow_dirty_shutdown (struct bufferevent*,int) ;
 struct bufferevent* bufferevent_openssl_socket_new (struct event_base*,int,int *,int ,int) ;
 struct bufferevent* bufferevent_socket_new (struct event_base*,int,int) ;
 int cert_verify_callback ;
 int err (char*) ;
 int err_openssl (char*) ;
 int evbuffer_add (struct evbuffer*,char*,size_t) ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new () ;
 int evhttp_add_header (struct evkeyvalq*,char*,char const*) ;
 struct evhttp_connection* evhttp_connection_base_bufferevent_new (struct event_base*,int *,struct bufferevent*,char const*,int) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_connection_set_retries (struct evhttp_connection*,int) ;
 int evhttp_connection_set_timeout (struct evhttp_connection*,int) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 struct evbuffer* evhttp_request_get_output_buffer (struct evhttp_request*) ;
 struct evkeyvalq* evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,struct bufferevent*) ;
 int evhttp_uri_free (struct evhttp_uri*) ;
 char* evhttp_uri_get_host (struct evhttp_uri*) ;
 char* evhttp_uri_get_path (struct evhttp_uri*) ;
 int evhttp_uri_get_port (struct evhttp_uri*) ;
 char* evhttp_uri_get_query (struct evhttp_uri*) ;
 char* evhttp_uri_get_scheme (struct evhttp_uri*) ;
 struct evhttp_uri* evhttp_uri_parse (char const*) ;
 int evutil_snprintf (char*,int,char*,unsigned long) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*) ;
 size_t fread (char*,int,int,int *) ;
 int http_request_done ;
 int ignore_cert ;
 int perror (char*) ;
 int printf (char*,int) ;
 int sk_SSL_COMP_free (int ) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int stderr ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strcmp (char*,char*) ;
 scalar_t__ strlen (char const*) ;
 int syntax () ;

int
main(int argc, char **argv)
{
 int r;
 struct event_base *base = ((void*)0);
 struct evhttp_uri *http_uri = ((void*)0);
 const char *url = ((void*)0), *data_file = ((void*)0);
 const char *crt = ((void*)0);
 const char *scheme, *host, *path, *query;
 char uri[256];
 int port;
 int retries = 0;
 int timeout = -1;

 SSL_CTX *ssl_ctx = ((void*)0);
 SSL *ssl = ((void*)0);
 struct bufferevent *bev;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req;
 struct evkeyvalq *output_headers;
 struct evbuffer *output_buffer;

 int i;
 int ret = 0;
 enum { HTTP, HTTPS } type = HTTP;

 for (i = 1; i < argc; i++) {
  if (!strcmp("-url", argv[i])) {
   if (i < argc - 1) {
    url = argv[i + 1];
   } else {
    syntax();
    goto error;
   }
  } else if (!strcmp("-crt", argv[i])) {
   if (i < argc - 1) {
    crt = argv[i + 1];
   } else {
    syntax();
    goto error;
   }
  } else if (!strcmp("-ignore-cert", argv[i])) {
   ignore_cert = 1;
  } else if (!strcmp("-data", argv[i])) {
   if (i < argc - 1) {
    data_file = argv[i + 1];
   } else {
    syntax();
    goto error;
   }
  } else if (!strcmp("-retries", argv[i])) {
   if (i < argc - 1) {
    retries = atoi(argv[i + 1]);
   } else {
    syntax();
    goto error;
   }
  } else if (!strcmp("-timeout", argv[i])) {
   if (i < argc - 1) {
    timeout = atoi(argv[i + 1]);
   } else {
    syntax();
    goto error;
   }
  } else if (!strcmp("-help", argv[i])) {
   syntax();
   goto error;
  }
 }

 if (!url) {
  syntax();
  goto error;
 }
 http_uri = evhttp_uri_parse(url);
 if (http_uri == ((void*)0)) {
  err("malformed url");
  goto error;
 }

 scheme = evhttp_uri_get_scheme(http_uri);
 if (scheme == ((void*)0) || (strcasecmp(scheme, "https") != 0 &&
                        strcasecmp(scheme, "http") != 0)) {
  err("url must be http or https");
  goto error;
 }

 host = evhttp_uri_get_host(http_uri);
 if (host == ((void*)0)) {
  err("url must have a host");
  goto error;
 }

 port = evhttp_uri_get_port(http_uri);
 if (port == -1) {
  port = (strcasecmp(scheme, "http") == 0) ? 80 : 443;
 }

 path = evhttp_uri_get_path(http_uri);
 if (strlen(path) == 0) {
  path = "/";
 }

 query = evhttp_uri_get_query(http_uri);
 if (query == ((void*)0)) {
  snprintf(uri, sizeof(uri) - 1, "%s", path);
 } else {
  snprintf(uri, sizeof(uri) - 1, "%s?%s", path, query);
 }
 uri[sizeof(uri) - 1] = '\0';




 SSL_library_init();
 ERR_load_crypto_strings();
 SSL_load_error_strings();
 OpenSSL_add_all_algorithms();




 r = RAND_poll();
 if (r == 0) {
  err_openssl("RAND_poll");
  goto error;
 }


 ssl_ctx = SSL_CTX_new(SSLv23_method());
 if (!ssl_ctx) {
  err_openssl("SSL_CTX_new");
  goto error;
 }

 if (crt == ((void*)0)) {
  X509_STORE *store;

  store = SSL_CTX_get_cert_store(ssl_ctx);







  if (X509_STORE_set_default_paths(store) != 1) {
   err_openssl("X509_STORE_set_default_paths");
   goto error;
  }

 } else {
  if (SSL_CTX_load_verify_locations(ssl_ctx, crt, ((void*)0)) != 1) {
   err_openssl("SSL_CTX_load_verify_locations");
   goto error;
  }
 }
 SSL_CTX_set_verify(ssl_ctx, SSL_VERIFY_PEER, ((void*)0));
 SSL_CTX_set_cert_verify_callback(ssl_ctx, cert_verify_callback,
       (void *) host);


 base = event_base_new();
 if (!base) {
  perror("event_base_new()");
  goto error;
 }


 ssl = SSL_new(ssl_ctx);
 if (ssl == ((void*)0)) {
  err_openssl("SSL_new()");
  goto error;
 }






 if (strcasecmp(scheme, "http") == 0) {
  bev = bufferevent_socket_new(base, -1, BEV_OPT_CLOSE_ON_FREE);
 } else {
  type = HTTPS;
  bev = bufferevent_openssl_socket_new(base, -1, ssl,
   BUFFEREVENT_SSL_CONNECTING,
   BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);
 }

 if (bev == ((void*)0)) {
  fprintf(stderr, "bufferevent_openssl_socket_new() failed\n");
  goto error;
 }

 bufferevent_openssl_set_allow_dirty_shutdown(bev, 1);



 evcon = evhttp_connection_base_bufferevent_new(base, ((void*)0), bev,
  host, port);
 if (evcon == ((void*)0)) {
  fprintf(stderr, "evhttp_connection_base_bufferevent_new() failed\n");
  goto error;
 }

 if (retries > 0) {
  evhttp_connection_set_retries(evcon, retries);
 }
 if (timeout >= 0) {
  evhttp_connection_set_timeout(evcon, timeout);
 }


 req = evhttp_request_new(http_request_done, bev);
 if (req == ((void*)0)) {
  fprintf(stderr, "evhttp_request_new() failed\n");
  goto error;
 }

 output_headers = evhttp_request_get_output_headers(req);
 evhttp_add_header(output_headers, "Host", host);
 evhttp_add_header(output_headers, "Connection", "close");

 if (data_file) {



  FILE * f = fopen(data_file, "rb");
  char buf[1024];
  size_t s;
  size_t bytes = 0;

  if (!f) {
   syntax();
   goto error;
  }

  output_buffer = evhttp_request_get_output_buffer(req);
  while ((s = fread(buf, 1, sizeof(buf), f)) > 0) {
   evbuffer_add(output_buffer, buf, s);
   bytes += s;
  }
  evutil_snprintf(buf, sizeof(buf)-1, "%lu", (unsigned long)bytes);
  evhttp_add_header(output_headers, "Content-Length", buf);
  fclose(f);
 }

 r = evhttp_make_request(evcon, req, data_file ? EVHTTP_REQ_POST : EVHTTP_REQ_GET, uri);
 if (r != 0) {
  fprintf(stderr, "evhttp_make_request() failed\n");
  goto error;
 }

 event_base_dispatch(base);
 goto cleanup;

error:
 ret = 1;
cleanup:
 if (evcon)
  evhttp_connection_free(evcon);
 if (http_uri)
  evhttp_uri_free(http_uri);
 if (base)
  event_base_free(base);

 if (ssl_ctx)
  SSL_CTX_free(ssl_ctx);
 if (type == HTTP && ssl)
  SSL_free(ssl);


 EVP_cleanup();
 ERR_free_strings();


 ERR_remove_state(0);




 CRYPTO_cleanup_all_ex_data();

 sk_SSL_COMP_free(SSL_COMP_get_compression_methods());







 return ret;
}
