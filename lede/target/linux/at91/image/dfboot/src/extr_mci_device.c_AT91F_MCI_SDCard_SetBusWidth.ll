; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_SDCard_SetBusWidth.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_SDCard_SetBusWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@AT91C_SR_READY_FOR_DATA = common dso_local global i32 0, align 4
@AT91C_SEL_DESEL_CARD_CMD = common dso_local global i32 0, align 4
@AT91C_MCI_SCDBUS = common dso_local global i64 0, align 8
@AT91C_BUS_WIDTH_4BITS = common dso_local global i8 0, align 1
@AT91C_BUS_WIDTH_1BIT = common dso_local global i8 0, align 1
@AT91C_SDCARD_SET_BUS_WIDTH_CMD = common dso_local global i32 0, align 4
@AT91C_CMD_SEND_OK = common dso_local global i64 0, align 8
@AT91C_CMD_SEND_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_MCI_SDCard_SetBusWidth(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @AT91F_MCI_GetStatus(%struct.TYPE_10__* %7, i32 %12)
  store volatile i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %6
  %15 = load volatile i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load volatile i32, i32* %4, align 4
  %19 = load volatile i32, i32* @AT91C_SR_READY_FOR_DATA, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %6, label %24

24:                                               ; preds = %22
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = load i32, i32* @AT91C_SEL_DESEL_CARD_CMD, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = call i32 @AT91F_MCI_SendCommand(%struct.TYPE_10__* %25, i32 %26, i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AT91C_MCI_SCDBUS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load i8, i8* @AT91C_BUS_WIDTH_4BITS, align 1
  store i8 %42, i8* %5, align 1
  br label %45

43:                                               ; preds = %24
  %44 = load i8, i8* @AT91C_BUS_WIDTH_1BIT, align 1
  store i8 %44, i8* %5, align 1
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = load i32, i32* @AT91C_SDCARD_SET_BUS_WIDTH_CMD, align 4
  %48 = load i8, i8* %5, align 1
  %49 = call i64 @AT91F_MCI_SDCard_SendAppCommand(%struct.TYPE_10__* %46, i32 %47, i8 signext %48)
  %50 = load i64, i64* @AT91C_CMD_SEND_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @AT91C_CMD_SEND_ERROR, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load i64, i64* @AT91C_CMD_SEND_OK, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @AT91F_MCI_GetStatus(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @AT91F_MCI_SendCommand(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @AT91F_MCI_SDCard_SendAppCommand(%struct.TYPE_10__*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
