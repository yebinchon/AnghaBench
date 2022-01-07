
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv6_debug_xml_write_state {int state; } ;
struct sfe_ipv6 {int debug_read_seq; } ;


 int CHAR_DEV_MSG_SIZE ;
 scalar_t__ copy_to_user (char*,char*,int ) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static bool sfe_ipv6_debug_dev_read_start(struct sfe_ipv6 *si, char *buffer, char *msg, size_t *length,
       int *total_read, struct sfe_ipv6_debug_xml_write_state *ws)
{
 int bytes_read;

 si->debug_read_seq++;

 bytes_read = snprintf(msg, CHAR_DEV_MSG_SIZE, "<sfe_ipv6>\n");
 if (copy_to_user(buffer + *total_read, msg, CHAR_DEV_MSG_SIZE)) {
  return 0;
 }

 *length -= bytes_read;
 *total_read += bytes_read;

 ws->state++;
 return 1;
}
