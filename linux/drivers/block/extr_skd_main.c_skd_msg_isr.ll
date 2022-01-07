; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_msg_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_msg_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"MSIX = 0x%x\0A\00", align 1
@FIT_INT_STATUS_HOST = common dso_local global i32 0, align 4
@FIT_ISH_MSG_FROM_DEV = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @skd_msg_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_msg_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.skd_device*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.skd_device*
  store %struct.skd_device* %8, %struct.skd_device** %5, align 8
  %9 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %10 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %14 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %18 = load i32, i32* @FIT_INT_STATUS_HOST, align 4
  %19 = call i32 @SKD_READL(%struct.skd_device* %17, i32 %18)
  %20 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %22 = load i32, i32* @FIT_ISH_MSG_FROM_DEV, align 4
  %23 = load i32, i32* @FIT_INT_STATUS_HOST, align 4
  %24 = call i32 @SKD_WRITEL(%struct.skd_device* %21, i32 %22, i32 %23)
  %25 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %26 = call i32 @skd_isr_msg_from_dev(%struct.skd_device* %25)
  %27 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %28 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @SKD_READL(%struct.skd_device*, i32) #1

declare dso_local i32 @SKD_WRITEL(%struct.skd_device*, i32, i32) #1

declare dso_local i32 @skd_isr_msg_from_dev(%struct.skd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
