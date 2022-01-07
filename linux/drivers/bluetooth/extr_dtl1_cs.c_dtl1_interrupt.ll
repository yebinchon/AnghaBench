; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtl1_info = type { i8, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i64 0, align 8
@UART_IIR_ID = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"RLSI\00", align 1
@UART_LSR_THRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unhandled IIR=%#x\00", align 1
@UART_MSR = common dso_local global i64 0, align 8
@UART_MSR_RI = common dso_local global i8 0, align 1
@XMIT_WAITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dtl1_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtl1_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dtl1_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.dtl1_info*
  store %struct.dtl1_info* %14, %struct.dtl1_info** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %17 = icmp ne %struct.dtl1_info* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %20 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %125

25:                                               ; preds = %18
  %26 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %27 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %36 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* @UART_IIR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @inb(i64 %41)
  %43 = load i32, i32* @UART_IIR_ID, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %78, %25
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %45
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* @UART_LSR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inb(i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %70 [
    i32 129, label %56
    i32 130, label %58
    i32 128, label %61
  ]

56:                                               ; preds = %48
  %57 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %73

58:                                               ; preds = %48
  %59 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %60 = call i32 @dtl1_receive(%struct.dtl1_info* %59)
  br label %73

61:                                               ; preds = %48
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @UART_LSR_THRE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %68 = call i32 @dtl1_write_wakeup(%struct.dtl1_info* %67)
  br label %69

69:                                               ; preds = %66, %61
  br label %73

70:                                               ; preds = %48
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %69, %58, %56
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = icmp sgt i32 %74, 100
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %86

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* @UART_IIR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @inb(i64 %82)
  %84 = load i32, i32* @UART_IIR_ID, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %10, align 4
  br label %45

86:                                               ; preds = %77, %45
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* @UART_MSR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @inb(i64 %90)
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %8, align 1
  %93 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %94 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %93, i32 0, i32 0
  %95 = load i8, i8* %94, align 8
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* %8, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @UART_MSR_RI, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %98, %100
  %102 = xor i32 %96, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %86
  %105 = load i8, i8* %8, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @UART_MSR_RI, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %106, %108
  %110 = trunc i32 %109 to i8
  %111 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %112 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %111, i32 0, i32 0
  store i8 %110, i8* %112, align 8
  %113 = load i32, i32* @XMIT_WAITING, align 4
  %114 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %115 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %114, i32 0, i32 2
  %116 = call i32 @clear_bit(i32 %113, i32* %115)
  %117 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %118 = call i32 @dtl1_write_wakeup(%struct.dtl1_info* %117)
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %104, %86
  %121 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %122 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %121, i32 0, i32 1
  %123 = call i32 @spin_unlock(i32* %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %120, %23
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @dtl1_receive(%struct.dtl1_info*) #1

declare dso_local i32 @dtl1_write_wakeup(%struct.dtl1_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
