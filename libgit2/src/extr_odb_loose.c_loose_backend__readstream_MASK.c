#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_13__ ;

/* Type definitions */
struct TYPE_23__ {size_t size; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ obj_hdr ;
struct TYPE_21__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_22__ {int /*<<< orphan*/ * free; int /*<<< orphan*/ * read; TYPE_3__* hash_ctx; int /*<<< orphan*/ * backend; } ;
struct TYPE_24__ {int /*<<< orphan*/  zstream; TYPE_13__ map; TYPE_1__ stream; } ;
typedef  TYPE_3__ loose_readstream ;
typedef  int /*<<< orphan*/  loose_backend ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_stream ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  TYPE_3__ git_hash_ctx ;
struct TYPE_25__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_5__ git_buf ;

/* Variables and functions */
 TYPE_5__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  GIT_OBJECT_INVALID ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  GIT_ZSTREAM_INFLATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*) ; 
 int FUNC7 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int FUNC10 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  loose_backend__readstream_free ; 
 int FUNC15 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  loose_backend__readstream_read ; 
 int FUNC16 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC17(
	git_odb_stream **stream_out,
	size_t *len_out,
	git_object_t *type_out,
	git_odb_backend *_backend,
	const git_oid *oid)
{
	loose_backend *backend;
	loose_readstream *stream = NULL;
	git_hash_ctx *hash_ctx = NULL;
	git_buf object_path = GIT_BUF_INIT;
	obj_hdr hdr;
	int error = 0;

	FUNC1(stream_out && len_out && type_out && _backend && oid);

	backend = (loose_backend *)_backend;
	*stream_out = NULL;
	*len_out = 0;
	*type_out = GIT_OBJECT_INVALID;

	if (FUNC14(&object_path, backend, oid) < 0) {
		error = FUNC10("no matching loose object",
			oid, GIT_OID_HEXSZ);
		goto done;
	}

	stream = FUNC2(1, sizeof(loose_readstream));
	FUNC0(stream);

	hash_ctx = FUNC4(sizeof(git_hash_ctx));
	FUNC0(hash_ctx);

	if ((error = FUNC9(hash_ctx)) < 0 ||
		(error = FUNC7(&stream->map, object_path.ptr)) < 0 ||
		(error = FUNC12(&stream->zstream, GIT_ZSTREAM_INFLATE)) < 0)
		goto done;

	/* check for a packlike loose object */
	if (!FUNC13(stream->map.data, stream->map.len))
		error = FUNC15(&hdr, stream);
	else
		error = FUNC16(&hdr, stream);

	if (error < 0)
		goto done;

	stream->stream.backend = _backend;
	stream->stream.hash_ctx = hash_ctx;
	stream->stream.read = &loose_backend__readstream_read;
	stream->stream.free = &loose_backend__readstream_free;

	*stream_out = (git_odb_stream *)stream;
	*len_out = hdr.size;
	*type_out = hdr.type;

done:
	if (error < 0) {
		if (stream) {
			FUNC6(&stream->map);
			FUNC11(&stream->zstream);
			FUNC3(stream);
		}
		if (hash_ctx) {
			FUNC8(hash_ctx);
			FUNC3(hash_ctx);
		}
	}

	FUNC5(&object_path);
	return error;
}