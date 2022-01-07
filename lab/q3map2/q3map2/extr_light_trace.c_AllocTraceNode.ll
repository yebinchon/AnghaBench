; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_AllocTraceNode.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_AllocTraceNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@numTraceNodes = common dso_local global i32 0, align 4
@maxTraceNodes = common dso_local global i32 0, align 4
@GROW_TRACE_NODES = common dso_local global i64 0, align 8
@traceNodes = common dso_local global %struct.TYPE_8__* null, align 8
@TRACE_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @AllocTraceNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocTraceNode() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = load i32, i32* @numTraceNodes, align 4
  %3 = load i32, i32* @maxTraceNodes, align 4
  %4 = icmp sge i32 %2, %3
  br i1 %4, label %5, label %30

5:                                                ; preds = %0
  %6 = load i64, i64* @GROW_TRACE_NODES, align 8
  %7 = load i32, i32* @maxTraceNodes, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @maxTraceNodes, align 4
  %11 = load i32, i32* @maxTraceNodes, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.TYPE_8__* @safe_malloc(i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %1, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @traceNodes, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @traceNodes, align 8
  %21 = load i32, i32* @numTraceNodes, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 12
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memcpy(%struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @traceNodes, align 8
  %27 = call i32 @free(%struct.TYPE_8__* %26)
  br label %28

28:                                               ; preds = %18, %5
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** @traceNodes, align 8
  br label %30

30:                                               ; preds = %28, %0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @traceNodes, align 8
  %32 = load i32, i32* @numTraceNodes, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = call i32 @memset(%struct.TYPE_8__* %34, i32 0, i32 12)
  %36 = load i32, i32* @TRACE_LEAF, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @traceNodes, align 8
  %38 = load i32, i32* @numTraceNodes, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i32 %36, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @traceNodes, align 8
  %43 = load i32, i32* @numTraceNodes, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @traceNodes, align 8
  %49 = load i32, i32* @numTraceNodes, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ClearBounds(i32 %47, i32 %53)
  %55 = load i32, i32* @numTraceNodes, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @numTraceNodes, align 4
  %57 = load i32, i32* @numTraceNodes, align 4
  %58 = sub nsw i32 %57, 1
  ret i32 %58
}

declare dso_local %struct.TYPE_8__* @safe_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
