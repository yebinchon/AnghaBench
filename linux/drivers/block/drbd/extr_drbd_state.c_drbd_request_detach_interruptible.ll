; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_drbd_request_detach_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_drbd_request_detach_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@SS_IN_TRANSIENT_STATE = common dso_local global i32 0, align 4
@D_FAILED = common dso_local global i64 0, align 8
@SS_IS_DISKLESS = common dso_local global i32 0, align 4
@SS_NOTHING_TO_DO = common dso_local global i32 0, align 4
@ERR_INTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_request_detach_interruptible(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %6 = call i32 @drbd_suspend_io(%struct.drbd_device* %5)
  %7 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %8 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %11 = call i32 @request_detach(%struct.drbd_device* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @SS_IN_TRANSIENT_STATE, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @wait_event_interruptible(i32 %9, i32 %14)
  %16 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %17 = call i32 @drbd_resume_io(%struct.drbd_device* %16)
  %18 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %19 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %22 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @D_FAILED, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @wait_event_interruptible(i32 %20, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SS_IS_DISKLESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @SS_NOTHING_TO_DO, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %1
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @ERR_INTR, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @drbd_suspend_io(%struct.drbd_device*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @request_detach(%struct.drbd_device*) #1

declare dso_local i32 @drbd_resume_io(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
