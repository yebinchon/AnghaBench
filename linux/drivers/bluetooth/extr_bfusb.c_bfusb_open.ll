; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.bfusb_data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"hdev %p bfusb %p\00", align 1
@BFUSB_MAX_BULK_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @bfusb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_open(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.bfusb_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %8 = call %struct.bfusb_data* @hci_get_drvdata(%struct.hci_dev* %7)
  store %struct.bfusb_data* %8, %struct.bfusb_data** %3, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %10 = load %struct.bfusb_data*, %struct.bfusb_data** %3, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %9, %struct.bfusb_data* %10)
  %12 = load %struct.bfusb_data*, %struct.bfusb_data** %3, align 8
  %13 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @write_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfusb_data*, %struct.bfusb_data** %3, align 8
  %17 = call i32 @bfusb_rx_submit(%struct.bfusb_data* %16, i32* null)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %28, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BFUSB_MAX_BULK_RX, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.bfusb_data*, %struct.bfusb_data** %3, align 8
  %27 = call i32 @bfusb_rx_submit(%struct.bfusb_data* %26, i32* null)
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %21

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.bfusb_data*, %struct.bfusb_data** %3, align 8
  %34 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @write_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.bfusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, %struct.bfusb_data*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfusb_rx_submit(%struct.bfusb_data*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
