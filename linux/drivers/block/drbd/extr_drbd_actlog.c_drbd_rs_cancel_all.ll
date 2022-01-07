; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_rs_cancel_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_rs_cancel_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, i32, i64, i32 }

@D_FAILED = common dso_local global i32 0, align 4
@LC_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_rs_cancel_all(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %3 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %4 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %3, i32 0, i32 1
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %7 = load i32, i32* @D_FAILED, align 4
  %8 = call i64 @get_ldev_if_state(%struct.drbd_device* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %12 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @lc_reset(i32 %13)
  %15 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %16 = call i32 @put_ldev(%struct.drbd_device* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %19 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @LC_FREE, align 4
  %21 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %22 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %24 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %27 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %26, i32 0, i32 0
  %28 = call i32 @wake_up(i32* %27)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @get_ldev_if_state(%struct.drbd_device*, i32) #1

declare dso_local i32 @lc_reset(i32) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
