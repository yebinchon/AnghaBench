; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_writebsp.c_BeginBSPFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_writebsp.c_BeginBSPFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@nummodels = common dso_local global i64 0, align 8
@numfaces = common dso_local global i64 0, align 8
@numnodes = common dso_local global i64 0, align 8
@numbrushsides = common dso_local global i64 0, align 8
@numvertexes = common dso_local global i32 0, align 4
@numleaffaces = common dso_local global i64 0, align 8
@numleafbrushes = common dso_local global i64 0, align 8
@numsurfedges = common dso_local global i64 0, align 8
@numedges = common dso_local global i32 0, align 4
@numleafs = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@dleafs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BeginBSPFile() #0 {
  store i64 0, i64* @nummodels, align 8
  store i64 0, i64* @numfaces, align 8
  store i64 0, i64* @numnodes, align 8
  store i64 0, i64* @numbrushsides, align 8
  store i32 0, i32* @numvertexes, align 4
  store i64 0, i64* @numleaffaces, align 8
  store i64 0, i64* @numleafbrushes, align 8
  store i64 0, i64* @numsurfedges, align 8
  store i32 1, i32* @numedges, align 4
  store i32 1, i32* @numvertexes, align 4
  store i32 1, i32* @numleafs, align 4
  %1 = load i32, i32* @CONTENTS_SOLID, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dleafs, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i64 0
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %1, i32* %4, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
