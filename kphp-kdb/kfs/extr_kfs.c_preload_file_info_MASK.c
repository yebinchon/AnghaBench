#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lev_start {int type; } ;
struct kfs_file_info {int start; char* filename; int flags; int preloaded_bytes; scalar_t__ kfs_file_type; int kfs_headers; scalar_t__ log_pos; scalar_t__ min_log_pos; scalar_t__ max_log_pos; scalar_t__ file_size; TYPE_1__* replica; struct kfs_file_header* khdr; scalar_t__ iv; } ;
struct kfs_file_header {scalar_t__ magic; scalar_t__ header_seq_num; scalar_t__ data_size; scalar_t__ raw_size; scalar_t__ kfs_file_type; scalar_t__ log_pos; scalar_t__ replica_id_hash; } ;
typedef  TYPE_1__* kfs_replica_handle_t ;
typedef  int /*<<< orphan*/  kfs_binlog_zip_header_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* ctr_crypt ) (TYPE_2__*,unsigned char*,unsigned char*,int,scalar_t__,unsigned long long) ;} ;
struct TYPE_3__ {scalar_t__ replica_id_hash; TYPE_2__* ctx_crypto; } ;

/* Variables and functions */
#define  KFS_BINLOG_ZIP_MAGIC 130 
 scalar_t__ KFS_MAGIC ; 
#define  LEV_ROTATE_FROM 129 
#define  LEV_START 128 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  START_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kfs_file_header*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ kfs_binlog ; 
 scalar_t__ FUNC5 (struct kfs_file_info*) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kfs_file_header*,struct kfs_file_header*,int) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kfs_file_info*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct kfs_file_info*,int,int,struct lev_start*) ; 
 int FUNC12 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,unsigned char*,unsigned char*,int,scalar_t__,unsigned long long) ; 
 int verbosity ; 

int FUNC14 (struct kfs_file_info *FI) {
  if (!FI->start) {
    int fd = FUNC9 (FI->filename, O_RDONLY);
    if (fd < 0) {
      FUNC3 (stderr, "Cannot open %s file %s: %m\n", FI->flags & 1 ? "snapshot" : "binlog", FI->filename);
      return -2;
    }
    if (FUNC5 (FI) < 0) {
      FUNC3 (stderr, "Cannot compute AES initialization vector for %s file %s.\n", FI->flags & 1 ? "snapshot" : "binlog", FI->filename);
      return -2;
    }
    FI->start = FUNC7 (START_BUFFER_SIZE);
    FUNC0 (FI->start);
    int r = FUNC12 (fd, FI->start, START_BUFFER_SIZE);
    if (r < 0) {
      FUNC3 (stderr, "Cannot read %s file %s: %m\n", FI->flags & 1 ? "snapshot" : "binlog", FI->filename);
      FUNC0 (FUNC2 (fd) >= 0);
      FUNC4 (FI->start);
      FI->start = 0;
      return -2;
    }
    FI->preloaded_bytes = r;
    if (FI->iv) {
      kfs_replica_handle_t R = FI->replica;
      FUNC0 (R && R->ctx_crypto);
      R->ctx_crypto->ctr_crypt (R->ctx_crypto, (unsigned char *) FI->start, (unsigned char *) FI->start, r, FI->iv, 0ULL);
    }
    struct kfs_file_header *kfs_Hdr = (struct kfs_file_header *) FI->start;
    int headers = 0;

    if (r >= 4096 && kfs_Hdr[0].magic == KFS_MAGIC) {
      if (FUNC1 (kfs_Hdr) < 0) {
        FUNC3 (stderr, "bad kfs header #0\n");
        FUNC0 (FUNC2 (fd) >= 0);
        FUNC4 (FI->start);
        FI->start = 0;
        return -2;
      }
      headers++;
      if (r >= 8192 && kfs_Hdr[1].magic == KFS_MAGIC) {
        if (FUNC1 (kfs_Hdr + 1) < 0) {
          FUNC3 (stderr, "bad kfs header #1\n");
          FUNC0 (FUNC2 (fd) >= 0);
          FUNC4 (FI->start);
          FI->start = 0;
          return -2;
        }
        headers++;
        if (kfs_Hdr[1].header_seq_num == kfs_Hdr[0].header_seq_num) {
          FUNC0 (!FUNC8 (kfs_Hdr + 1, kfs_Hdr, 4096));
        }
      }
    }

    FI->khdr = headers ? kfs_Hdr : 0;
    if (headers > 1 && kfs_Hdr[1].header_seq_num > kfs_Hdr[0].header_seq_num) {
      FI->khdr++;
    }

    FUNC0 (!headers || FI->khdr->data_size + headers * 4096 == FI->khdr->raw_size);
    FUNC0 (!headers || FI->khdr->kfs_file_type == FI->kfs_file_type);

    FI->kfs_headers = headers;

    if (FI->kfs_file_type == kfs_binlog) {

      struct lev_start *E = (struct lev_start *) (kfs_Hdr + headers);

      r -= 4096 * headers;

      switch (E->type) {
      case LEV_START:
      case LEV_ROTATE_FROM:
        if (FI->flags & 16) {
          FUNC3 (stderr, "error: zipped binlog file '%s' starts from LEV_START or LEV_ROTATE_FROM.\n", FI->filename);
          FUNC0 (FUNC2 (fd) >= 0);
          return -2;
        }
        if (FUNC11 (FI, fd, r, E) < 0) {
          return -2;
        }
        break;
      case KFS_BINLOG_ZIP_MAGIC:
        if (headers) {
          FUNC3 (stderr, "error: zipped binlog file '%s' contains KFS headers\n", FI->filename);
          FUNC0 (FUNC2 (fd) >= 0);
          return -2;
        }
        if (!(FI->flags & 16)) {
          FUNC3 (stderr, "error: not zipped binlog file '%s' contains KFS_BINLOG_ZIP_MAGIC\n", FI->filename);
          FUNC0 (FUNC2 (fd) >= 0);
          return -2;
        }
        if (FUNC10 (FI, fd, (kfs_binlog_zip_header_t *) E) < 0) {
          return -2;
        }
        break;
      default:
        FUNC3 (stderr, "warning: binlog file %s begins with wrong entry type %08x\n", FI->filename, E->type);
        FUNC0 (FUNC2 (fd) >= 0);
        return -2;
      }

      if (FI->khdr && FI->khdr->log_pos != FI->log_pos) {
        FUNC3 (stderr, "warning: binlog file %s has different starting position in header (%ld) and starting record (%ld)\n", FI->filename, FI->khdr->log_pos, FI->log_pos);
        FUNC0 (FUNC2 (fd) >= 0);
        return -2;
      }

      if (FI->log_pos < FI->min_log_pos || FI->log_pos > FI->max_log_pos) {
        FUNC3 (stderr, "warning: binlog file %s starts from position %ld (should be in %ld..%ld)\n", FI->filename, FI->log_pos, FI->min_log_pos, FI->max_log_pos);
        FUNC0 (FUNC2 (fd) >= 0);
        return -2;
      }

      if (verbosity > 1) {
        FUNC3 (stderr, "preloaded binlog file info for %s (%ld bytes, %d headers), covering %ld..%ld, name corresponds to %ld..%ld\n", FI->filename, FI->file_size, headers, FI->log_pos, FI->log_pos + FI->file_size - 4096 * headers, FI->min_log_pos, FI->max_log_pos);
      }
    }

    if (FI->khdr && FI->replica) {
      if (!FI->khdr->replica_id_hash) {
        FUNC3 (stderr, "warning: binlog file %s has zero replica_id_hash, skipping\n", FI->filename);
        FUNC0 (FUNC2 (fd) >= 0);
        return -2;
      }
      if (!FI->replica->replica_id_hash) {
        FI->replica->replica_id_hash = FI->khdr->replica_id_hash;
      } else if (FI->replica->replica_id_hash != FI->khdr->replica_id_hash) {
        FUNC3 (stderr, "warning: binlog file %s has incorrect replica_id_hash %016lx != %016lx\n", FI->filename, FI->khdr->replica_id_hash, FI->replica->replica_id_hash);
      }
    }

    FUNC0 (FUNC6 (fd, 4096 * headers, SEEK_SET) == 4096 * headers);

    return fd;
  } else {
    return -1;
  }
}