; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.TYPE_2__*, %struct.h5* }
%struct.TYPE_2__ = type { i32 }
%struct.h5 = type { i64, i32 (%struct.hci_uart*, i8)* }

@.str = private unnamed_addr constant [24 x i8] c"%s pending %zu count %d\00", align 1
@SLIP_DELIMITER = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Too short H5 packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8*, i32)* @h5_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_recv(%struct.hci_uart* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_uart*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.h5*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 1
  %13 = load %struct.h5*, %struct.h5** %12, align 8
  store %struct.h5* %13, %struct.h5** %8, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %9, align 8
  %15 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.h5*, %struct.h5** %8, align 8
  %21 = getelementptr inbounds %struct.h5, %struct.h5* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22, i32 %23)
  br label %25

25:                                               ; preds = %65, %44, %40, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %25
  %29 = load %struct.h5*, %struct.h5** %8, align 8
  %30 = getelementptr inbounds %struct.h5, %struct.h5* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @SLIP_DELIMITER, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = call i32 @BT_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.h5*, %struct.h5** %8, align 8
  %43 = call i32 @h5_reset_rx(%struct.h5* %42)
  br label %25

44:                                               ; preds = %33
  %45 = load %struct.h5*, %struct.h5** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @h5_unslip_one_byte(%struct.h5* %45, i8 zeroext %47)
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %25

53:                                               ; preds = %28
  %54 = load %struct.h5*, %struct.h5** %8, align 8
  %55 = getelementptr inbounds %struct.h5, %struct.h5* %54, i32 0, i32 1
  %56 = load i32 (%struct.hci_uart*, i8)*, i32 (%struct.hci_uart*, i8)** %55, align 8
  %57 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i32 %56(%struct.hci_uart* %57, i8 zeroext %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %74

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %25

73:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @BT_DBG(i8*, i32, i64, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @h5_reset_rx(%struct.h5*) #1

declare dso_local i32 @h5_unslip_one_byte(%struct.h5*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
