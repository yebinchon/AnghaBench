; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_pscan_window_reporting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_pscan_window_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.btmrvl_sdio_card* }
%struct.btmrvl_sdio_card = type { i32 }

@BT_CMD_PSCAN_WIN_REPORT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"PSCAN_WIN_REPORT_ENABLE command failed: %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btmrvl_pscan_window_reporting(%struct.btmrvl_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btmrvl_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btmrvl_sdio_card*, align 8
  %7 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %9 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %10, align 8
  store %struct.btmrvl_sdio_card* %11, %struct.btmrvl_sdio_card** %6, align 8
  %12 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %6, align 8
  %13 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %19 = load i32, i32* @BT_CMD_PSCAN_WIN_REPORT_ENABLE, align 4
  %20 = call i32 @btmrvl_send_sync_cmd(%struct.btmrvl_private* %18, i32 %19, i32* %5, i32 1)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @BT_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @btmrvl_send_sync_cmd(%struct.btmrvl_private*, i32, i32*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
