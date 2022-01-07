
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int perf_io_write_fl (char const*,int,char const*,struct repository const*,int *,int *,char const*,struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_data_fl(const char *file, int line, uint64_t us_elapsed_absolute,
         uint64_t us_elapsed_region, const char *category,
         const struct repository *repo, const char *key,
         const char *value)
{
 const char *event_name = "data";
 struct strbuf buf_payload = STRBUF_INIT;

 strbuf_addf(&buf_payload, "%s:%s", key, value);

 perf_io_write_fl(file, line, event_name, repo, &us_elapsed_absolute,
    &us_elapsed_region, category, &buf_payload);
 strbuf_release(&buf_payload);
}
