
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha1_context ;


 scalar_t__ base64_encode (unsigned char*,size_t*,unsigned char*,int) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int sha1_finish (int *,unsigned char*) ;
 int sha1_starts (int *) ;
 int sha1_update (int *,unsigned char const*,size_t) ;
 int sprintf (char*,char*,char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *ws_compute_answer(const char *sec_key) {
  if (!sec_key) {
    return ((void*)0);
  }


  static char *MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
  size_t text_length = (strlen(sec_key) + strlen(MAGIC) + 1);
  char *text = (char *)malloc(text_length * sizeof(char));
  if (!text) {
    return ((void*)0);
  }
  sprintf(text, "%s%s", sec_key, MAGIC);


  unsigned char hash[20];
  sha1_context ctx;
  sha1_starts(&ctx);
  sha1_update(&ctx, (const unsigned char *)text, text_length-1);
  sha1_finish(&ctx, hash);
  free(text);
  text = ((void*)0);


  size_t length = 0;
  base64_encode(((void*)0), &length, ((void*)0), 20);
  char *ret = (char *)malloc(length);
  if (!ret) {
    return ((void*)0);
  }
  if (base64_encode((unsigned char *)ret, &length, hash, 20)) {
    free(ret);
    return ((void*)0);
  }

  return ret;
}
