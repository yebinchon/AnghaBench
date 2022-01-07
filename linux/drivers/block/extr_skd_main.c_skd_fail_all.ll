; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_fail_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_fail_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.skd_device* }
%struct.skd_device = type { i32 }

@SKD_DRVR_STATE_ONLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"req_not_online\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*)* @skd_fail_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_fail_all(%struct.request_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.skd_device*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i32 0, i32 0
  %7 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  store %struct.skd_device* %7, %struct.skd_device** %4, align 8
  %8 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %9 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SKD_DRVR_STATE_ONLINE, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @SKD_ASSERT(i32 %13)
  %15 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %16 = call i32 @skd_log_skdev(%struct.skd_device* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %18 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %22 [
    i32 133, label %20
    i32 134, label %20
    i32 131, label %20
    i32 132, label %20
    i32 128, label %20
    i32 140, label %20
    i32 138, label %20
    i32 139, label %20
    i32 137, label %21
    i32 130, label %21
    i32 129, label %21
    i32 135, label %21
    i32 136, label %21
  ]

20:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %23

21:                                               ; preds = %1, %1, %1, %1, %1
  br label %22

22:                                               ; preds = %1, %21
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @SKD_ASSERT(i32) #1

declare dso_local i32 @skd_log_skdev(%struct.skd_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
