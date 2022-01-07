; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_rewrite.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IR = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @rewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewrite(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %3 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = call i32 @prelabel(%struct.TYPE_14__* %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = call i32 @dumptree(%struct.TYPE_14__* %12)
  %14 = call i32 @debug(i32 %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprint(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @debug(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %20, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = call i32 %21(%struct.TYPE_14__* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = call i32 @dumpcover(%struct.TYPE_14__* %24, i32 1, i32 0)
  %26 = call i32 @debug(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = call i32 @reduce(%struct.TYPE_14__* %27, i32 1)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @prelabel(%struct.TYPE_14__*) #1

declare dso_local i32 @debug(i32) #1

declare dso_local i32 @dumptree(%struct.TYPE_14__*) #1

declare dso_local i32 @fprint(i32, i8*) #1

declare dso_local i32 @dumpcover(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @reduce(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
