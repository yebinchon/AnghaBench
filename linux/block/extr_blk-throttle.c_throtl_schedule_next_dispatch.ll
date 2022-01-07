; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_schedule_next_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_schedule_next_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_service_queue = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_service_queue*, i32)* @throtl_schedule_next_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throtl_schedule_next_dispatch(%struct.throtl_service_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.throtl_service_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.throtl_service_queue* %0, %struct.throtl_service_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %7 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %13 = call i32 @update_min_dispatch_time(%struct.throtl_service_queue* %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %18 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @jiffies, align 4
  %21 = call i64 @time_after(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16, %11
  %24 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %25 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %26 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @throtl_schedule_pending_timer(%struct.throtl_service_queue* %24, i32 %27)
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %23, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @update_min_dispatch_time(%struct.throtl_service_queue*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @throtl_schedule_pending_timer(%struct.throtl_service_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
