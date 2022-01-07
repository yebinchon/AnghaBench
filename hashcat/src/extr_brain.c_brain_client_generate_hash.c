
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int XXH64 (char const*,size_t const,int const) ;

void brain_client_generate_hash (u64 *hash, const char *line_buf, const size_t line_len)
{
  const u64 seed = 0;

  hash[0] = XXH64 (line_buf, line_len, seed);
}
