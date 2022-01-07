
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lit_utf8_byte_t ;
typedef int ecma_string_t ;
typedef scalar_t__ ecma_length_t ;
typedef scalar_t__ ecma_char_t ;


 int ECMA_FINALIZE_UTF8_STRING (int *,int ) ;
 int ECMA_STRING_TO_UTF8_STRING (int *,int *,int ) ;
 scalar_t__ ecma_string_get_length (int *) ;
 int lit_utf8_decr (int const**) ;
 int lit_utf8_incr (int const**) ;
 scalar_t__ lit_utf8_read_next (int const**) ;
 int original_str_size ;
 int * original_str_utf8_p ;
 int search_str_size ;
 int * search_str_utf8_p ;

bool
ecma_builtin_helper_string_find_index (ecma_string_t *original_str_p,
                                       ecma_string_t *search_str_p,
                                       bool first_index,
                                       ecma_length_t start_pos,
                                       ecma_length_t *ret_index_p)
{
  bool match_found = 0;
  const ecma_length_t original_len = ecma_string_get_length (original_str_p);
  const ecma_length_t search_len = ecma_string_get_length (search_str_p);

  if (search_len <= original_len)
  {
    if (!search_len)
    {
      match_found = 1;
      *ret_index_p = first_index ? 0 : original_len;
    }
    else
    {

      ECMA_STRING_TO_UTF8_STRING (original_str_p, original_str_utf8_p, original_str_size);

      ecma_length_t index = start_pos;

      const lit_utf8_byte_t *original_str_curr_p = original_str_utf8_p;
      for (ecma_length_t idx = 0; idx < index; idx++)
      {
        lit_utf8_incr (&original_str_curr_p);
      }


      ECMA_STRING_TO_UTF8_STRING (search_str_p, search_str_utf8_p, search_str_size);

      const lit_utf8_byte_t *search_str_curr_p = search_str_utf8_p;


      bool searching = 1;
      ecma_char_t first_char = lit_utf8_read_next (&search_str_curr_p);
      while (searching)
      {

        ecma_length_t match_len = 0;
        const lit_utf8_byte_t *stored_original_str_curr_p = original_str_curr_p;

        if (match_len < search_len &&
            index + match_len < original_len &&
            lit_utf8_read_next (&original_str_curr_p) == first_char)
        {
          const lit_utf8_byte_t *nested_search_str_curr_p = search_str_curr_p;
          match_len++;

          while (match_len < search_len &&
                 index + match_len < original_len &&
                 lit_utf8_read_next (&original_str_curr_p) == lit_utf8_read_next (&nested_search_str_curr_p))
          {
            match_len++;
          }
        }


        if (match_len == search_len)
        {
          match_found = 1;
          *ret_index_p = index;

          break;
        }
        else
        {

          original_str_curr_p = stored_original_str_curr_p;

          if (first_index)
          {
            if ((searching = (index <= original_len - search_len)))
            {
              lit_utf8_incr (&original_str_curr_p);
              index++;
            }
          }
          else
          {
            if ((searching = (index > 0)))
            {
              lit_utf8_decr (&original_str_curr_p);
              index--;
            }
          }
        }
      }

      ECMA_FINALIZE_UTF8_STRING (search_str_utf8_p, search_str_size);
      ECMA_FINALIZE_UTF8_STRING (original_str_utf8_p, original_str_size);
    }
  }

  return match_found;
}
