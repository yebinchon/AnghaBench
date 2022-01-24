#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  module; } ;
struct TYPE_19__ {scalar_t__ sub_graph; scalar_t__ graph; scalar_t__ data; scalar_t__ protocol; scalar_t__ method; scalar_t__ maxts; scalar_t__ cumts; scalar_t__ avgts; scalar_t__ bw; scalar_t__ percent; scalar_t__ visitors; scalar_t__ hits; } ;
struct TYPE_18__ {scalar_t__ append_protocol; scalar_t__ append_method; scalar_t__ serve_usecs; scalar_t__ bandwidth; } ;
typedef  TYPE_1__ GOutput ;
typedef  int /*<<< orphan*/  GModule ;
typedef  int /*<<< orphan*/  GDashRender ;
typedef  TYPE_2__ GDashModule ;

/* Variables and functions */
 TYPE_17__ conf ; 
 int FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC14 (GDashModule * data, GDashRender render, int expanded)
{
  int x = FUNC0 ();
  GModule module = data->module;
  const GOutput *output = FUNC1 (module);

  /* basic metrics */
  if (output->hits)
    FUNC7 (data, render, &x);
  if (output->percent)
    FUNC8 (data, render, &x);
  if (output->visitors)
    FUNC12 (data, render, &x);
  if (output->percent)
    FUNC13 (data, render, &x);

  /* render bandwidth if available */
  if (conf.bandwidth && output->bw)
    FUNC4 (data, render, &x);

  /* render avgts, cumts and maxts if available */
  if (output->avgts && conf.serve_usecs)
    FUNC2 (data, render, &x);
  if (output->cumts && conf.serve_usecs)
    FUNC5 (data, render, &x);
  if (output->maxts && conf.serve_usecs)
    FUNC9 (data, render, &x);

  /* render request method if available */
  if (output->method && conf.append_method)
    FUNC10 (data, render, &x);
  /* render request protocol if available */
  if (output->protocol && conf.append_protocol)
    FUNC11 (data, render, &x);
  if (output->data)
    FUNC6 (data, render, &x);

  /* skip graph bars if module is expanded and we have sub nodes */
  if ((output->graph && !expanded) || (output->sub_graph && expanded))
    FUNC3 (data, render, &x);
}