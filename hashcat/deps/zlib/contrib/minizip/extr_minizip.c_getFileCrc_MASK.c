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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int ZIP_ERRNO ; 
 int ZIP_OK ; 
 unsigned long FUNC1 (unsigned long,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (void*,int,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

int FUNC6(const char* filenameinzip,void*buf,unsigned long size_buf,unsigned long* result_crc)
{
   unsigned long calculate_crc=0;
   int err=ZIP_OK;
   FILE * fin = FUNC0(filenameinzip,"rb");

   unsigned long size_read = 0;
   unsigned long total_read = 0;
   if (fin==NULL)
   {
       err = ZIP_ERRNO;
   }

    if (err == ZIP_OK)
        do
        {
            err = ZIP_OK;
            size_read = (int)FUNC4(buf,1,size_buf,fin);
            if (size_read < size_buf)
                if (FUNC3(fin)==0)
            {
                FUNC5("error in reading %s\n",filenameinzip);
                err = ZIP_ERRNO;
            }

            if (size_read>0)
                calculate_crc = FUNC1(calculate_crc,buf,size_read);
            total_read += size_read;

        } while ((err == ZIP_OK) && (size_read>0));

    if (fin)
        FUNC2(fin);

    *result_crc=calculate_crc;
    FUNC5("file %s crc %lx\n", filenameinzip, calculate_crc);
    return err;
}