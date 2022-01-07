; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_rx_pkt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_rx_pkt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i64, %struct.h5* }
%struct.h5 = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@SLIP_DELIMITER = common dso_local global i8 0, align 1
@h5_rx_3wire_hdr = common dso_local global i32 0, align 4
@H5_MAX_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't allocate mem for new packet\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8)* @h5_rx_pkt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_rx_pkt_start(%struct.hci_uart* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.h5*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 1
  %9 = load %struct.h5*, %struct.h5** %8, align 8
  store %struct.h5* %9, %struct.h5** %6, align 8
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @SLIP_DELIMITER, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load i32, i32* @h5_rx_3wire_hdr, align 4
  %18 = load %struct.h5*, %struct.h5** %6, align 8
  %19 = getelementptr inbounds %struct.h5, %struct.h5* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.h5*, %struct.h5** %6, align 8
  %21 = getelementptr inbounds %struct.h5, %struct.h5* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = load i32, i32* @H5_MAX_LEN, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.TYPE_2__* @bt_skb_alloc(i32 %22, i32 %23)
  %25 = load %struct.h5*, %struct.h5** %6, align 8
  %26 = getelementptr inbounds %struct.h5, %struct.h5* %25, i32 0, i32 1
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.h5*, %struct.h5** %6, align 8
  %28 = getelementptr inbounds %struct.h5, %struct.h5* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %16
  %32 = call i32 @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.h5*, %struct.h5** %6, align 8
  %34 = call i32 @h5_reset_rx(%struct.h5* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %16
  %38 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %39 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.h5*, %struct.h5** %6, align 8
  %43 = getelementptr inbounds %struct.h5, %struct.h5* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i8* %41, i8** %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %31, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_2__* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @h5_reset_rx(%struct.h5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
