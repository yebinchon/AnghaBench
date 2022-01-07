; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-exec.c_blk_execute_rq_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-exec.c_blk_execute_rq_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.gendisk = type { i32 }
%struct.request = type { i32*, %struct.gendisk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_execute_rq_nowait(%struct.request_queue* %0, %struct.gendisk* %1, %struct.request* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.gendisk* %1, %struct.gendisk** %7, align 8
  store %struct.request* %2, %struct.request** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = call i32 (...) @irqs_disabled()
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.request*, %struct.request** %8, align 8
  %14 = call i32 @blk_rq_is_passthrough(%struct.request* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %20 = load %struct.request*, %struct.request** %8, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 1
  store %struct.gendisk* %19, %struct.gendisk** %21, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.request*, %struct.request** %8, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.request*, %struct.request** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @blk_mq_sched_insert_request(%struct.request* %25, i32 %26, i32 1, i32 0)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @blk_mq_sched_insert_request(%struct.request*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
