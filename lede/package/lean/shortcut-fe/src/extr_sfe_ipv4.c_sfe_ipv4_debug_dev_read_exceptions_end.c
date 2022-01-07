
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv4_debug_xml_write_state {int state; } ;
struct sfe_ipv4 {int dummy; } ;


 int CHAR_DEV_MSG_SIZE ;
 scalar_t__ copy_to_user (char*,char*,int ) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static bool sfe_ipv4_debug_dev_read_exceptions_end(struct sfe_ipv4 *si, char *buffer, char *msg, size_t *length,
         int *total_read, struct sfe_ipv4_debug_xml_write_state *ws)
{
 int bytes_read;

 bytes_read = snprintf(msg, CHAR_DEV_MSG_SIZE, "\t</exceptions>\n");
 if (copy_to_user(buffer + *total_read, msg, CHAR_DEV_MSG_SIZE)) {
  return 0;
 }

 *length -= bytes_read;
 *total_read += bytes_read;

 ws->state++;
 return 1;
}
