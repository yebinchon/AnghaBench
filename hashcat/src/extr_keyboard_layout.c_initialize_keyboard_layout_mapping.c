
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int token_cnt; int* len_min; int* len_max; int* sep; int * len; int * buf; void** attr; } ;
typedef TYPE_1__ token_t ;
struct TYPE_7__ {int dst_len; int src_len; int dst_char; int src_char; } ;
typedef TYPE_2__ keyboard_layout_mapping_t ;
typedef int HCFILE ;


 int HCBUFSIZ_LARGE ;
 scalar_t__ PARSER_OK ;
 void* TOKEN_ATTR_VERIFY_LENGTH ;
 size_t fgetl (int *,char*,int ) ;
 int hc_fclose (int *) ;
 int hc_feof (int *) ;
 int hc_fopen (int *,char const*,char*) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (int ) ;
 scalar_t__ input_tokenizer (int const*,int const,TYPE_1__*) ;
 int memcpy (int *,int ,int ) ;
 int qsort (TYPE_2__*,int,int,int ) ;
 int sort_by_src_len ;

bool initialize_keyboard_layout_mapping (const char *filename, keyboard_layout_mapping_t *keyboard_layout_mapping, int *keyboard_layout_mapping_cnt)
{
  HCFILE fp;

  if (hc_fopen (&fp, filename, "r") == 0) return 0;

  char *line_buf = (char *) hcmalloc (HCBUFSIZ_LARGE);

  int maps_cnt = 0;

  while (!hc_feof (&fp))
  {
    const size_t line_len = fgetl (&fp, line_buf, HCBUFSIZ_LARGE);

    if (line_len == 0) continue;

    token_t token;

    token.token_cnt = 2;

    token.len_min[0] = 1;
    token.len_max[0] = 4;
    token.sep[0] = 0x09;
    token.attr[0] = TOKEN_ATTR_VERIFY_LENGTH;

    token.len_min[1] = 0;
    token.len_max[1] = 4;
    token.sep[1] = 0x09;
    token.attr[1] = TOKEN_ATTR_VERIFY_LENGTH;

    if (input_tokenizer ((const u8 *) line_buf, (const int) line_len, &token) != PARSER_OK)
    {
      hc_fclose (&fp);

      hcfree (line_buf);

      return 0;
    }

    memcpy (&keyboard_layout_mapping[maps_cnt].src_char, token.buf[0], token.len[0]);
    memcpy (&keyboard_layout_mapping[maps_cnt].dst_char, token.buf[1], token.len[1]);

    keyboard_layout_mapping[maps_cnt].src_len = token.len[0];
    keyboard_layout_mapping[maps_cnt].dst_len = token.len[1];

    if (maps_cnt == 256)
    {
      hc_fclose (&fp);

      hcfree (line_buf);

      return 0;
    }

    maps_cnt++;
  }

  *keyboard_layout_mapping_cnt = maps_cnt;

  hc_fclose (&fp);

  hcfree (line_buf);



  qsort (keyboard_layout_mapping, maps_cnt, sizeof (keyboard_layout_mapping_t), sort_by_src_len);

  return 1;
}
