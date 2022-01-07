; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ath.c_ath_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ath.c_ath_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, %struct.ath_struct* }
%struct.ath_struct = type { i32* }

@ath_recv_pkts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Frame reassembly failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8*, i32)* @ath_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_recv(%struct.hci_uart* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_uart*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %11 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %10, i32 0, i32 1
  %12 = load %struct.ath_struct*, %struct.ath_struct** %11, align 8
  store %struct.ath_struct* %12, %struct.ath_struct** %8, align 8
  %13 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %14 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ath_struct*, %struct.ath_struct** %8, align 8
  %17 = getelementptr inbounds %struct.ath_struct, %struct.ath_struct* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ath_recv_pkts, align 4
  %22 = load i32, i32* @ath_recv_pkts, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32* @h4_recv_buf(i32 %15, i32* %18, i8* %19, i32 %20, i32 %21, i32 %23)
  %25 = load %struct.ath_struct*, %struct.ath_struct** %8, align 8
  %26 = getelementptr inbounds %struct.ath_struct, %struct.ath_struct* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.ath_struct*, %struct.ath_struct** %8, align 8
  %28 = getelementptr inbounds %struct.ath_struct, %struct.ath_struct* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %3
  %33 = load %struct.ath_struct*, %struct.ath_struct** %8, align 8
  %34 = getelementptr inbounds %struct.ath_struct, %struct.ath_struct* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @PTR_ERR(i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %38 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @bt_dev_err(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.ath_struct*, %struct.ath_struct** %8, align 8
  %43 = getelementptr inbounds %struct.ath_struct, %struct.ath_struct* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

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
