; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_rq_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_rq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32, i32, i32, i32*, i32, i32, i32, i64, %struct.request_queue*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_rq_init(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = call i32 @memset(%struct.request* %5, i32 0, i32 64)
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 9
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 8
  store %struct.request_queue* %10, %struct.request_queue** %12, align 8
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 7
  store i64 -1, i64* %14, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 6
  %17 = call i32 @INIT_HLIST_NODE(i32* %16)
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 5
  %20 = call i32 @RB_CLEAR_NODE(i32* %19)
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = call i32 (...) @ktime_get_ns()
  %26 = load %struct.request*, %struct.request** %4, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 2
  %32 = call i32 @refcount_set(i32* %31, i32 1)
  ret void
}

declare dso_local i32 @memset(%struct.request*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
