; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_restart_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_restart_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIT_INT_DEF_MASK = common dso_local global i32 0, align 4
@FIT_INT_STATUS_HOST = common dso_local global i32 0, align 4
@FIT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"drive status=0x%x\0A\00", align 1
@FIT_SR_DRIVE_STATE_MASK = common dso_local global i32 0, align 4
@SKD_DRVR_STATE_RESTARTING = common dso_local global i32 0, align 4
@SKD_RESTARTING_TIMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_restart_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_restart_device(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %4 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %5 = load i32, i32* @FIT_INT_DEF_MASK, align 4
  %6 = load i32, i32* @FIT_INT_STATUS_HOST, align 4
  %7 = call i32 @SKD_WRITEL(%struct.skd_device* %4, i32 %5, i32 %6)
  %8 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %9 = load i32, i32* @FIT_STATUS, align 4
  %10 = call i32 @SKD_READL(%struct.skd_device* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %12 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @FIT_SR_DRIVE_STATE_MASK, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %22 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %24 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @SKD_DRVR_STATE_RESTARTING, align 4
  %26 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %27 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @SKD_RESTARTING_TIMO, align 4
  %29 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %30 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %32 = call i32 @skd_soft_reset(%struct.skd_device* %31)
  ret void
}

declare dso_local i32 @SKD_WRITEL(%struct.skd_device*, i32, i32) #1

declare dso_local i32 @SKD_READL(%struct.skd_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @skd_soft_reset(%struct.skd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
