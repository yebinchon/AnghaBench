; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_rx_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_rx_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.h5* }
%struct.h5 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@h5_rx_crc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8)* @h5_rx_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_rx_payload(%struct.hci_uart* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.h5*, align 8
  %6 = alloca i8*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 0
  %9 = load %struct.h5*, %struct.h5** %8, align 8
  store %struct.h5* %9, %struct.h5** %5, align 8
  %10 = load %struct.h5*, %struct.h5** %5, align 8
  %11 = getelementptr inbounds %struct.h5, %struct.h5* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @H5_HDR_CRC(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @h5_rx_crc, align 4
  %20 = load %struct.h5*, %struct.h5** %5, align 8
  %21 = getelementptr inbounds %struct.h5, %struct.h5* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.h5*, %struct.h5** %5, align 8
  %23 = getelementptr inbounds %struct.h5, %struct.h5* %22, i32 0, i32 0
  store i32 2, i32* %23, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %26 = call i32 @h5_complete_rx_pkt(%struct.hci_uart* %25)
  br label %27

27:                                               ; preds = %24, %18
  ret i32 0
}

declare dso_local i64 @H5_HDR_CRC(i8*) #1

declare dso_local i32 @h5_complete_rx_pkt(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
