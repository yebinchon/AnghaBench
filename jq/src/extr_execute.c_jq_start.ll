; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_jq_start.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_jq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.closure = type { i32, %struct.TYPE_9__* }
%struct.frame = type { i64, i64 }

@JQ_DEBUG_TRACE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jq_start(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.closure, align 8
  %8 = alloca %struct.frame*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @jv_nomem_handler(i32 %11, i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = call i32 @jq_reset(%struct.TYPE_10__* %16)
  %18 = getelementptr inbounds %struct.closure, %struct.closure* %7, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = ptrtoint %struct.TYPE_9__* %21 to i32
  store i32 %22, i32* %18, align 8
  %23 = getelementptr inbounds %struct.closure, %struct.closure* %7, i32 0, i32 1
  store %struct.TYPE_9__* inttoptr (i64 -1 to %struct.TYPE_9__*), %struct.TYPE_9__** %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = bitcast %struct.closure* %7 to { i32, %struct.TYPE_9__* }*
  %26 = getelementptr inbounds { i32, %struct.TYPE_9__* }, { i32, %struct.TYPE_9__* }* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds { i32, %struct.TYPE_9__* }, { i32, %struct.TYPE_9__* }* %25, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call %struct.frame* @frame_push(%struct.TYPE_10__* %24, i32 %27, %struct.TYPE_9__* %29, i32 0, i32 0)
  store %struct.frame* %30, %struct.frame** %8, align 8
  %31 = load %struct.frame*, %struct.frame** %8, align 8
  %32 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.frame*, %struct.frame** %8, align 8
  %34 = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @stack_push(%struct.TYPE_10__* %35, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = call i32 @stack_get_pos(%struct.TYPE_10__* %44)
  %46 = call i32 @stack_save(%struct.TYPE_10__* %38, i32 %43, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @JQ_DEBUG_TRACE_ALL, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  ret void
}

declare dso_local i32 @jv_nomem_handler(i32, i32) #1

declare dso_local i32 @jq_reset(%struct.TYPE_10__*) #1

declare dso_local %struct.frame* @frame_push(%struct.TYPE_10__*, i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @stack_push(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @stack_save(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @stack_get_pos(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
