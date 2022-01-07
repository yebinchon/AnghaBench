
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_infotype ;
typedef int CURL ;
 int curl_dump_data (char const*,unsigned char*,size_t) ;
 int curl_dump_header (char const*,unsigned char*,size_t,int) ;
 int trace_curl ;
 int trace_curl_data ;
 int trace_printf_key (int *,char*,char*) ;

__attribute__((used)) static int curl_trace(CURL *handle, curl_infotype type, char *data, size_t size, void *userp)
{
 const char *text;
 enum { NO_FILTER = 0, DO_FILTER = 1 };

 switch (type) {
 case 128:
  trace_printf_key(&trace_curl, "== Info: %s", data);
  break;
 case 131:
  text = "=> Send header";
  curl_dump_header(text, (unsigned char *)data, size, DO_FILTER);
  break;
 case 133:
  if (trace_curl_data) {
   text = "=> Send data";
   curl_dump_data(text, (unsigned char *)data, size);
  }
  break;
 case 129:
  if (trace_curl_data) {
   text = "=> Send SSL data";
   curl_dump_data(text, (unsigned char *)data, size);
  }
  break;
 case 132:
  text = "<= Recv header";
  curl_dump_header(text, (unsigned char *)data, size, NO_FILTER);
  break;
 case 134:
  if (trace_curl_data) {
   text = "<= Recv data";
   curl_dump_data(text, (unsigned char *)data, size);
  }
  break;
 case 130:
  if (trace_curl_data) {
   text = "<= Recv SSL data";
   curl_dump_data(text, (unsigned char *)data, size);
  }
  break;

 default:
  return 0;
 }
 return 0;
}
