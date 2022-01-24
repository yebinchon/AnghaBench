#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fw_priv {size_t allocated_size; char* fw_name; size_t size; void* data; } ;
struct device {int dummy; } ;
typedef  size_t loff_t ;
typedef  enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOMEM ; 
 size_t INT_MAX ; 
 int PATH_MAX ; 
 int READING_FIRMWARE ; 
 int READING_FIRMWARE_PREALLOC_BUFFER ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_priv*) ; 
 char** fw_path ; 
 int /*<<< orphan*/  FUNC6 (struct fw_priv*) ; 
 int FUNC7 (char*,void**,size_t*,size_t,int) ; 
 int FUNC8 (char*,int,char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static int
FUNC10(struct device *device, struct fw_priv *fw_priv,
			   const char *suffix,
			   int (*decompress)(struct device *dev,
					     struct fw_priv *fw_priv,
					     size_t in_size,
					     const void *in_buffer))
{
	loff_t size;
	int i, len;
	int rc = -ENOENT;
	char *path;
	enum kernel_read_file_id id = READING_FIRMWARE;
	size_t msize = INT_MAX;
	void *buffer = NULL;

	/* Already populated data member means we're loading into a buffer */
	if (!decompress && fw_priv->data) {
		buffer = fw_priv->data;
		id = READING_FIRMWARE_PREALLOC_BUFFER;
		msize = fw_priv->allocated_size;
	}

	path = FUNC1();
	if (!path)
		return -ENOMEM;

	for (i = 0; i < FUNC0(fw_path); i++) {
		/* skip the unset customized path */
		if (!fw_path[i][0])
			continue;

		len = FUNC8(path, PATH_MAX, "%s/%s%s",
			       fw_path[i], fw_priv->fw_name, suffix);
		if (len >= PATH_MAX) {
			rc = -ENAMETOOLONG;
			break;
		}

		fw_priv->size = 0;
		rc = FUNC7(path, &buffer, &size,
						msize, id);
		if (rc) {
			if (rc != -ENOENT)
				FUNC4(device, "loading %s failed with error %d\n",
					 path, rc);
			else
				FUNC3(device, "loading %s failed for no such file or directory.\n",
					 path);
			continue;
		}
		if (decompress) {
			FUNC3(device, "f/w decompressing %s\n",
				fw_priv->fw_name);
			rc = decompress(device, fw_priv, size, buffer);
			/* discard the superfluous original content */
			FUNC9(buffer);
			buffer = NULL;
			if (rc) {
				FUNC5(fw_priv);
				continue;
			}
		} else {
			FUNC3(device, "direct-loading %s\n",
				fw_priv->fw_name);
			if (!fw_priv->data)
				fw_priv->data = buffer;
			fw_priv->size = size;
		}
		FUNC6(fw_priv);
		break;
	}
	FUNC2(path);

	return rc;
}