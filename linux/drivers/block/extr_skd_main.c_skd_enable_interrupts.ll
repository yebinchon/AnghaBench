; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIT_ISH_FW_STATE_CHANGE = common dso_local global i64 0, align 8
@FIT_ISH_COMPLETION_POSTED = common dso_local global i64 0, align 8
@FIT_ISH_MSG_FROM_DEV = common dso_local global i64 0, align 8
@FIT_INT_MASK_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"interrupt mask=0x%x\0A\00", align 1
@FIT_CONTROL = common dso_local global i32 0, align 4
@FIT_CR_ENABLE_INTERRUPTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"control=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_enable_interrupts(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca i64, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %4 = load i64, i64* @FIT_ISH_FW_STATE_CHANGE, align 8
  %5 = load i64, i64* @FIT_ISH_COMPLETION_POSTED, align 8
  %6 = add nsw i64 %4, %5
  %7 = load i64, i64* @FIT_ISH_MSG_FROM_DEV, align 8
  %8 = add nsw i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = xor i64 %10, -1
  %12 = load i32, i32* @FIT_INT_MASK_HOST, align 4
  %13 = call i32 @SKD_WRITEL(%struct.skd_device* %9, i64 %11, i32 %12)
  %14 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %15 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %3, align 8
  %19 = xor i64 %18, -1
  %20 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %22 = load i32, i32* @FIT_CONTROL, align 4
  %23 = call i64 @SKD_READL(%struct.skd_device* %21, i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* @FIT_CR_ENABLE_INTERRUPTS, align 8
  %25 = load i64, i64* %3, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %3, align 8
  %27 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %28 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* @FIT_CONTROL, align 4
  %36 = call i32 @SKD_WRITEL(%struct.skd_device* %33, i64 %34, i32 %35)
  ret void
}

declare dso_local i32 @SKD_WRITEL(%struct.skd_device*, i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i64 @SKD_READL(%struct.skd_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
