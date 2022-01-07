; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_wake_irq_bt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_wake_irq_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { %struct.btmrvl_plt_wake_cfg*, %struct.TYPE_2__* }
%struct.btmrvl_plt_wake_cfg = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"wake by bt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @btmrvl_wake_irq_bt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_wake_irq_bt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.btmrvl_sdio_card*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.btmrvl_plt_wake_cfg*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.btmrvl_sdio_card*
  store %struct.btmrvl_sdio_card* %9, %struct.btmrvl_sdio_card** %5, align 8
  %10 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %11 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %15 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %14, i32 0, i32 0
  %16 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %15, align 8
  store %struct.btmrvl_plt_wake_cfg* %16, %struct.btmrvl_plt_wake_cfg** %7, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @dev_info(%struct.device* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %7, align 8
  %20 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, %struct.btmrvl_plt_wake_cfg* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @disable_irq_nosync(i32 %21)
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @pm_wakeup_event(%struct.device* %23, i32 0)
  %25 = call i32 (...) @pm_system_wakeup()
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @pm_wakeup_event(%struct.device*, i32) #1

declare dso_local i32 @pm_system_wakeup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
