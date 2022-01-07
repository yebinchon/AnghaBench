; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_unslip_one_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_unslip_one_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h5 = type { i32, i32, i32 }

@SLIP_DELIMITER = common dso_local global i8 0, align 1
@SLIP_ESC = common dso_local global i8 0, align 1
@H5_RX_ESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid esc byte 0x%02hhx\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unslipped 0x%02hhx, rx_pending %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.h5*, i8)* @h5_unslip_one_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h5_unslip_one_byte(%struct.h5* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.h5*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store %struct.h5* %0, %struct.h5** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load i8, i8* @SLIP_DELIMITER, align 1
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* @SLIP_ESC, align 1
  store i8 %9, i8* %6, align 1
  store i8* %4, i8** %7, align 8
  %10 = load i32, i32* @H5_RX_ESC, align 4
  %11 = load %struct.h5*, %struct.h5** %3, align 8
  %12 = getelementptr inbounds %struct.h5, %struct.h5* %11, i32 0, i32 2
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @SLIP_ESC, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @H5_RX_ESC, align 4
  %23 = load %struct.h5*, %struct.h5** %3, align 8
  %24 = getelementptr inbounds %struct.h5, %struct.h5* %23, i32 0, i32 2
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  br label %59

26:                                               ; preds = %15, %2
  %27 = load i32, i32* @H5_RX_ESC, align 4
  %28 = load %struct.h5*, %struct.h5** %3, align 8
  %29 = getelementptr inbounds %struct.h5, %struct.h5* %28, i32 0, i32 2
  %30 = call i64 @test_and_clear_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  switch i32 %34, label %37 [
    i32 129, label %35
    i32 128, label %36
  ]

35:                                               ; preds = %32
  store i8* %5, i8** %7, align 8
  br label %42

36:                                               ; preds = %32
  store i8* %6, i8** %7, align 8
  br label %42

37:                                               ; preds = %32
  %38 = load i8, i8* %4, align 1
  %39 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %38)
  %40 = load %struct.h5*, %struct.h5** %3, align 8
  %41 = call i32 @h5_reset_rx(%struct.h5* %40)
  br label %59

42:                                               ; preds = %36, %35
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.h5*, %struct.h5** %3, align 8
  %45 = getelementptr inbounds %struct.h5, %struct.h5* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @skb_put_data(i32 %46, i8* %47, i32 1)
  %49 = load %struct.h5*, %struct.h5** %3, align 8
  %50 = getelementptr inbounds %struct.h5, %struct.h5* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = load %struct.h5*, %struct.h5** %3, align 8
  %56 = getelementptr inbounds %struct.h5, %struct.h5* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %54, i32 %57)
  br label %59

59:                                               ; preds = %43, %37, %21
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*, i8 zeroext) #1

declare dso_local i32 @h5_reset_rx(%struct.h5*) #1

declare dso_local i32 @skb_put_data(i32, i8*, i32) #1

declare dso_local i32 @BT_DBG(i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
