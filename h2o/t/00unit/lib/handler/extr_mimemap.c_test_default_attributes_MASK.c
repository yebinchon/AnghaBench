#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int is_compressible; scalar_t__ priority; } ;
typedef  TYPE_1__ h2o_mime_attributes_t ;

/* Variables and functions */
 scalar_t__ H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST ; 
 scalar_t__ H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void)
{
    h2o_mime_attributes_t attr;

    FUNC0("text/plain", &attr);
    FUNC1(attr.is_compressible);
    FUNC1(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);

    FUNC0("text/plain; charset=utf-8", &attr);
    FUNC1(attr.is_compressible);
    FUNC1(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);

    FUNC0("application/xhtml+xml", &attr);
    FUNC1(attr.is_compressible);
    FUNC1(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);

    FUNC0("application/xhtml+xml; charset=utf-8", &attr);
    FUNC1(attr.is_compressible);
    FUNC1(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);

    FUNC0("text/css", &attr);
    FUNC1(attr.is_compressible);
    FUNC1(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST);

    FUNC0("text/css; charset=utf-8", &attr);
    FUNC1(attr.is_compressible);
    FUNC1(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST);

    FUNC0("application/octet-stream", &attr);
    FUNC1(!attr.is_compressible);
    FUNC1(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);
}