; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, i32, %struct.intel_data* }
%struct.intel_data = type { i32* }

@HCI_UART_REGISTERED = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@intel_recv_pkts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Frame reassembly failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8*, i32)* @intel_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_recv(%struct.hci_uart* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_uart*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_data*, align 8
  %9 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %11 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %10, i32 0, i32 2
  %12 = load %struct.intel_data*, %struct.intel_data** %11, align 8
  store %struct.intel_data* %12, %struct.intel_data** %8, align 8
  %13 = load i32, i32* @HCI_UART_REGISTERED, align 4
  %14 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %15 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EUNATCH, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %23 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.intel_data*, %struct.intel_data** %8, align 8
  %26 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @intel_recv_pkts, align 4
  %31 = load i32, i32* @intel_recv_pkts, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32* @h4_recv_buf(i32 %24, i32* %27, i8* %28, i32 %29, i32 %30, i32 %32)
  %34 = load %struct.intel_data*, %struct.intel_data** %8, align 8
  %35 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.intel_data*, %struct.intel_data** %8, align 8
  %37 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %21
  %42 = load %struct.intel_data*, %struct.intel_data** %8, align 8
  %43 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %47 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @bt_dev_err(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.intel_data*, %struct.intel_data** %8, align 8
  %52 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %21
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %41, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32* @h4_recv_buf(i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @bt_dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
