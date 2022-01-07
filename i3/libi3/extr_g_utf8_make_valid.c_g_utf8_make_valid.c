
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ gssize ;
typedef int gsize ;
typedef int gchar ;
struct TYPE_7__ {int const* str; } ;
typedef TYPE_1__ GString ;


 int FALSE ;
 int g_assert (scalar_t__) ;
 int g_return_val_if_fail (int ,int *) ;
 int g_string_append (TYPE_1__*,char*) ;
 int g_string_append_c (TYPE_1__*,char) ;
 int g_string_append_len (TYPE_1__*,int const*,int) ;
 int * g_string_free (TYPE_1__*,int ) ;
 TYPE_1__* g_string_sized_new (int) ;
 int * g_strndup (int const*,scalar_t__) ;
 scalar_t__ g_utf8_validate (int const*,int,int const**) ;
 scalar_t__ strlen (int const*) ;

gchar *
g_utf8_make_valid (const gchar *str,
                   gssize len)
{
  GString *string;
  const gchar *remainder, *invalid;
  gsize remaining_bytes, valid_bytes;

  g_return_val_if_fail (str != ((void*)0), ((void*)0));

  if (len < 0)
    len = strlen (str);

  string = ((void*)0);
  remainder = str;
  remaining_bytes = len;

  while (remaining_bytes != 0)
    {
      if (g_utf8_validate (remainder, remaining_bytes, &invalid))
 break;
      valid_bytes = invalid - remainder;

      if (string == ((void*)0))
 string = g_string_sized_new (remaining_bytes);

      g_string_append_len (string, remainder, valid_bytes);

      g_string_append (string, "\357\277\275");

      remaining_bytes -= valid_bytes + 1;
      remainder = invalid + 1;
    }

  if (string == ((void*)0))
    return g_strndup (str, len);

  g_string_append_len (string, remainder, remaining_bytes);
  g_string_append_c (string, '\0');

  g_assert (g_utf8_validate (string->str, -1, ((void*)0)));

  return g_string_free (string, FALSE);
}
