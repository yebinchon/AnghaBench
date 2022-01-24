#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* kfs_file_handle_t ;
struct TYPE_8__ {int log_split_max; int log_split_mod; int magic; int log_split_min; int /*<<< orphan*/  created_at; } ;
typedef  TYPE_2__ index_header ;
struct TYPE_7__ {int fd; int offset; } ;

/* Variables and functions */
 int ANTISPAM_INDEX_MAGIC ; 
 int FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int log_split_max ; 
 int log_split_min ; 
 int log_split_mod ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int verbosity ; 

__attribute__((used)) static bool FUNC6 (kfs_file_handle_t Index, index_header* header) {
  int fd = -1;
  if (Index == NULL) {
    FUNC3 (header, 0, sizeof (index_header));
    header->created_at = FUNC5 (NULL);
    header->log_split_max = 1;
    header->log_split_mod = 1;
    return TRUE;
  }

  fd = Index->fd;
  int offset = Index->offset;

  // reading header
  if (FUNC2 (fd, offset, SEEK_SET) != offset) {
    FUNC1 (stderr, "error reading header from index file: incorrect Index->offset = %d: %m\n", offset);
    return FALSE;
  }

  int size = sizeof (index_header);
  int r = FUNC4 (fd, header, size);
  if (r != size) {
    FUNC1 (stderr, "error reading header from index file: read %d bytes instead of %d at position %d: %m\n", r, size, offset);
    return FALSE;
  }

  if (header->magic != ANTISPAM_INDEX_MAGIC) {
    FUNC1 (stderr, "bad antispam index file header\n");
    FUNC1 (stderr, "magic = 0x%08x instead of 0x%08x // offset = %d\n", header->magic, ANTISPAM_INDEX_MAGIC, offset);
    return FALSE;
  }

  FUNC0 (header->log_split_max);
  log_split_min = header->log_split_min;
  log_split_max = header->log_split_max;
  log_split_mod = header->log_split_mod;

  if (verbosity > 1) {
    FUNC1 (stderr, "header loaded %d %d %d %d\n", fd, log_split_min, log_split_max, log_split_mod);
    FUNC1 (stderr, "ok\n");
  }
  return TRUE;
}