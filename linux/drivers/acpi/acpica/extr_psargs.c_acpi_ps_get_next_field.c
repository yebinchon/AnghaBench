
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int integer; int name; void* size; } ;
struct TYPE_8__ {TYPE_3__ value; int * inline_comment; int * name_comment; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_6__ {int* data; TYPE_1__ value; } ;
union acpi_parse_object {TYPE_4__ common; TYPE_2__ named; } ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct acpi_parse_state {int* aml; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GET16 (int*) ;
 int ACPI_GET32 (int*) ;
 int ACPI_GET8 (int*) ;
 int ACPI_MOVE_32_TO_32 (int*,int*) ;
 int ACPI_NAMESEG_SIZE ;
 int AML_BUFFER_OP ;







 int AML_INT_BYTELIST_OP ;



 int AML_INT_NAMEPATH_OP ;


 int ASL_CV_CAPTURE_COMMENTS_ONLY (struct acpi_parse_state*) ;
 int * acpi_gbl_current_inline_comment ;
 union acpi_parse_object* acpi_ps_alloc_op (int,int*) ;
 int acpi_ps_append_arg (union acpi_parse_object*,union acpi_parse_object*) ;
 int acpi_ps_free_op (union acpi_parse_object*) ;
 int acpi_ps_get_next_namestring (struct acpi_parse_state*) ;
 void* acpi_ps_get_next_package_length (struct acpi_parse_state*) ;
 int acpi_ps_set_name (union acpi_parse_object*,int) ;
 int ps_get_next_field ;
 int return_PTR (union acpi_parse_object*) ;

__attribute__((used)) static union acpi_parse_object *acpi_ps_get_next_field(struct acpi_parse_state
             *parser_state)
{
 u8 *aml;
 union acpi_parse_object *field;
 union acpi_parse_object *arg = ((void*)0);
 u16 opcode;
 u32 name;
 u8 access_type;
 u8 access_attribute;
 u8 access_length;
 u32 pkg_length;
 u8 *pkg_end;
 u32 buffer_length;

 ACPI_FUNCTION_TRACE(ps_get_next_field);

 ASL_CV_CAPTURE_COMMENTS_ONLY(parser_state);
 aml = parser_state->aml;



 switch (ACPI_GET8(parser_state->aml)) {
 case 134:

  opcode = 129;
  parser_state->aml++;
  break;

 case 137:

  opcode = 133;
  parser_state->aml++;
  break;

 case 136:

  opcode = 132;
  parser_state->aml++;
  break;

 case 135:

  opcode = 131;
  parser_state->aml++;
  break;

 default:

  opcode = 130;
  break;
 }



 field = acpi_ps_alloc_op(opcode, aml);
 if (!field) {
  return_PTR(((void*)0));
 }



 ASL_CV_CAPTURE_COMMENTS_ONLY(parser_state);
 switch (opcode) {
 case 130:



  ACPI_MOVE_32_TO_32(&name, parser_state->aml);
  acpi_ps_set_name(field, name);
  parser_state->aml += ACPI_NAMESEG_SIZE;

  ASL_CV_CAPTURE_COMMENTS_ONLY(parser_state);
  field->common.value.size =
      acpi_ps_get_next_package_length(parser_state);
  break;

 case 129:



  field->common.value.size =
      acpi_ps_get_next_package_length(parser_state);
  break;

 case 133:
 case 131:
  access_type = ACPI_GET8(parser_state->aml);
  parser_state->aml++;
  access_attribute = ACPI_GET8(parser_state->aml);
  parser_state->aml++;

  field->common.value.integer = (u8)access_type;
  field->common.value.integer |= (u16)(access_attribute << 8);



  if (opcode == 131) {
   access_length = ACPI_GET8(parser_state->aml);
   parser_state->aml++;

   field->common.value.integer |=
       (u32)(access_length << 16);
  }
  break;

 case 132:





  aml = parser_state->aml;
  if (ACPI_GET8(parser_state->aml) == AML_BUFFER_OP) {
   parser_state->aml++;

   ASL_CV_CAPTURE_COMMENTS_ONLY(parser_state);
   pkg_end = parser_state->aml;
   pkg_length =
       acpi_ps_get_next_package_length(parser_state);
   pkg_end += pkg_length;

   ASL_CV_CAPTURE_COMMENTS_ONLY(parser_state);
   if (parser_state->aml < pkg_end) {



    arg =
        acpi_ps_alloc_op(AML_INT_BYTELIST_OP, aml);
    if (!arg) {
     acpi_ps_free_op(field);
     return_PTR(((void*)0));
    }



    opcode = ACPI_GET8(parser_state->aml);
    parser_state->aml++;

    ASL_CV_CAPTURE_COMMENTS_ONLY(parser_state);
    switch (opcode) {
    case 139:

     buffer_length =
         ACPI_GET8(parser_state->aml);
     parser_state->aml += 1;
     break;

    case 128:

     buffer_length =
         ACPI_GET16(parser_state->aml);
     parser_state->aml += 2;
     break;

    case 138:

     buffer_length =
         ACPI_GET32(parser_state->aml);
     parser_state->aml += 4;
     break;

    default:

     buffer_length = 0;
     break;
    }



    ASL_CV_CAPTURE_COMMENTS_ONLY(parser_state);
    arg->named.value.size = buffer_length;
    arg->named.data = parser_state->aml;
   }



   parser_state->aml = pkg_end;
  } else {
   arg = acpi_ps_alloc_op(AML_INT_NAMEPATH_OP, aml);
   if (!arg) {
    acpi_ps_free_op(field);
    return_PTR(((void*)0));
   }



   arg->common.value.name =
       acpi_ps_get_next_namestring(parser_state);
  }



  acpi_ps_append_arg(field, arg);
  break;

 default:


  break;
 }

 return_PTR(field);
}
