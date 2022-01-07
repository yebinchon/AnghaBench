; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_service_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_service_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_service_queue = type { i32, i32, i32* }

@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@throtl_pending_timer_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_service_queue*)* @throtl_service_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_service_queue_init(%struct.throtl_service_queue* %0) #0 {
  %2 = alloca %struct.throtl_service_queue*, align 8
  store %struct.throtl_service_queue* %0, %struct.throtl_service_queue** %2, align 8
  %3 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %2, align 8
  %4 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %2, align 8
  %9 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load i32, i32* @RB_ROOT_CACHED, align 4
  %14 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %2, align 8
  %15 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %2, align 8
  %17 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %16, i32 0, i32 0
  %18 = load i32, i32* @throtl_pending_timer_fn, align 4
  %19 = call i32 @timer_setup(i32* %17, i32 %18, i32 0)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
