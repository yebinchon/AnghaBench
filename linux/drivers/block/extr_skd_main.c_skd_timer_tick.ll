; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_timer_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_timer_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i64, i64, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@SKD_DRVR_STATE_FAULT = common dso_local global i64 0, align 8
@FIT_STATUS = common dso_local global i32 0, align 4
@FIT_SR_DRIVE_STATE_MASK = common dso_local global i64 0, align 8
@SKD_DRVR_STATE_ONLINE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@skdev = common dso_local global %struct.skd_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @skd_timer_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_timer_tick(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %7 = ptrtoint %struct.skd_device* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.skd_device* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.skd_device* %10, %struct.skd_device** %3, align 8
  %11 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %12 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SKD_DRVR_STATE_FAULT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %56

17:                                               ; preds = %1
  %18 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %19 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %18, i32 0, i32 2
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %23 = load i32, i32* @FIT_STATUS, align 4
  %24 = call i64 @SKD_READL(%struct.skd_device* %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* @FIT_SR_DRIVE_STATE_MASK, align 8
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %30 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %35 = call i32 @skd_isr_fwstate(%struct.skd_device* %34)
  br label %36

36:                                               ; preds = %33, %17
  %37 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %38 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SKD_DRVR_STATE_ONLINE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %44 = call i32 @skd_timer_tick_not_online(%struct.skd_device* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %47 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %46, i32 0, i32 3
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* @HZ, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @mod_timer(i32* %47, i64 %50)
  %52 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %53 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %52, i32 0, i32 2
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %45, %16
  ret void
}

declare dso_local %struct.skd_device* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @SKD_READL(%struct.skd_device*, i32) #1

declare dso_local i32 @skd_isr_fwstate(%struct.skd_device*) #1

declare dso_local i32 @skd_timer_tick_not_online(%struct.skd_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
