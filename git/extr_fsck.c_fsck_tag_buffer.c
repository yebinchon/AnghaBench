
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oid; } ;
struct tag {TYPE_1__ object; } ;
struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct fsck_options {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int FSCK_MSG_BAD_OBJECT_SHA1 ;
 int FSCK_MSG_BAD_TAG_NAME ;
 int FSCK_MSG_BAD_TYPE ;
 int FSCK_MSG_MISSING_OBJECT ;
 int FSCK_MSG_MISSING_TAG ;
 int FSCK_MSG_MISSING_TAGGER_ENTRY ;
 int FSCK_MSG_MISSING_TAG_ENTRY ;
 int FSCK_MSG_MISSING_TAG_OBJECT ;
 int FSCK_MSG_MISSING_TYPE ;
 int FSCK_MSG_MISSING_TYPE_ENTRY ;
 int FSCK_MSG_TAG_OBJECT_NOT_TAG ;
 int OBJ_TAG ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ check_refname_format (int ,int ) ;
 int free (char*) ;
 int fsck_ident (char const**,TYPE_1__*,struct fsck_options*) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;
 char* read_object_file (int *,int*,unsigned long*) ;
 int report (struct fsck_options*,TYPE_1__*,int ,char*,...) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf (struct strbuf*,char*,int,char const*) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char const*,char) ;
 scalar_t__ type_from_string_gently (char const*,int,int) ;
 int type_name (int) ;
 int verify_headers (char const*,unsigned long,TYPE_1__*,struct fsck_options*) ;

__attribute__((used)) static int fsck_tag_buffer(struct tag *tag, const char *data,
 unsigned long size, struct fsck_options *options)
{
 struct object_id oid;
 int ret = 0;
 const char *buffer;
 char *to_free = ((void*)0), *eol;
 struct strbuf sb = STRBUF_INIT;
 const char *p;

 if (data)
  buffer = data;
 else {
  enum object_type type;

  buffer = to_free =
   read_object_file(&tag->object.oid, &type, &size);
  if (!buffer)
   return report(options, &tag->object,
    FSCK_MSG_MISSING_TAG_OBJECT,
    "cannot read tag object");

  if (type != OBJ_TAG) {
   ret = report(options, &tag->object,
    FSCK_MSG_TAG_OBJECT_NOT_TAG,
    "expected tag got %s",
       type_name(type));
   goto done;
  }
 }

 ret = verify_headers(buffer, size, &tag->object, options);
 if (ret)
  goto done;

 if (!skip_prefix(buffer, "object ", &buffer)) {
  ret = report(options, &tag->object, FSCK_MSG_MISSING_OBJECT, "invalid format - expected 'object' line");
  goto done;
 }
 if (parse_oid_hex(buffer, &oid, &p) || *p != '\n') {
  ret = report(options, &tag->object, FSCK_MSG_BAD_OBJECT_SHA1, "invalid 'object' line format - bad sha1");
  if (ret)
   goto done;
 }
 buffer = p + 1;

 if (!skip_prefix(buffer, "type ", &buffer)) {
  ret = report(options, &tag->object, FSCK_MSG_MISSING_TYPE_ENTRY, "invalid format - expected 'type' line");
  goto done;
 }
 eol = strchr(buffer, '\n');
 if (!eol) {
  ret = report(options, &tag->object, FSCK_MSG_MISSING_TYPE, "invalid format - unexpected end after 'type' line");
  goto done;
 }
 if (type_from_string_gently(buffer, eol - buffer, 1) < 0)
  ret = report(options, &tag->object, FSCK_MSG_BAD_TYPE, "invalid 'type' value");
 if (ret)
  goto done;
 buffer = eol + 1;

 if (!skip_prefix(buffer, "tag ", &buffer)) {
  ret = report(options, &tag->object, FSCK_MSG_MISSING_TAG_ENTRY, "invalid format - expected 'tag' line");
  goto done;
 }
 eol = strchr(buffer, '\n');
 if (!eol) {
  ret = report(options, &tag->object, FSCK_MSG_MISSING_TAG, "invalid format - unexpected end after 'type' line");
  goto done;
 }
 strbuf_addf(&sb, "refs/tags/%.*s", (int)(eol - buffer), buffer);
 if (check_refname_format(sb.buf, 0)) {
  ret = report(options, &tag->object, FSCK_MSG_BAD_TAG_NAME,
      "invalid 'tag' name: %.*s",
      (int)(eol - buffer), buffer);
  if (ret)
   goto done;
 }
 buffer = eol + 1;

 if (!skip_prefix(buffer, "tagger ", &buffer)) {

  ret = report(options, &tag->object, FSCK_MSG_MISSING_TAGGER_ENTRY, "invalid format - expected 'tagger' line");
  if (ret)
   goto done;
 }
 else
  ret = fsck_ident(&buffer, &tag->object, options);

done:
 strbuf_release(&sb);
 free(to_free);
 return ret;
}
