; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"interrupt_handler: %p\00", align 1
@INT_SOURCE_REG_OFF = common dso_local global i32 0, align 4
@INTERESTING_INTERRUPTS = common dso_local global i32 0, align 4
@RX_BUS_MASTER_COMPLETE = common dso_local global i32 0, align 4
@DBG_IRQ = common dso_local global i32 0, align 4
@DBG_BUS = common dso_local global i32 0, align 4
@DBG_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"rx_bus_master_complete asserted\00", align 1
@TX_BUS_MASTER_COMPLETE = common dso_local global i32 0, align 4
@DBG_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"tx_bus_master_complete asserted\00", align 1
@RX_DATA_AV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"rx_data_av asserted\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"work done: %u\00", align 1
@DBG_WARN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"spurious interrupt source: %#x\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"interrupt_handler done: %p\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* @DBG_FLOW, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i32, i8*, ...) @PRINTD(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %67, %2
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @INT_SOURCE_REG_OFF, align 4
  %17 = call i32 @rd_regl(i32* %15, i32 %16)
  %18 = load i32, i32* @INTERESTING_INTERRUPTS, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RX_BUS_MASTER_COMPLETE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @DBG_IRQ, align 4
  %30 = load i32, i32* @DBG_BUS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DBG_RX, align 4
  %33 = or i32 %31, %32
  %34 = call i32 (i32, i8*, ...) @PRINTD(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @rx_bus_master_complete_handler(i32* %35)
  br label %37

37:                                               ; preds = %26, %21
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TX_BUS_MASTER_COMPLETE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @DBG_IRQ, align 4
  %46 = load i32, i32* @DBG_BUS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DBG_TX, align 4
  %49 = or i32 %47, %48
  %50 = call i32 (i32, i8*, ...) @PRINTD(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @tx_bus_master_complete_handler(i32* %51)
  br label %53

53:                                               ; preds = %42, %37
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @RX_DATA_AV, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @DBG_IRQ, align 4
  %62 = load i32, i32* @DBG_RX, align 4
  %63 = or i32 %61, %62
  %64 = call i32 (i32, i8*, ...) @PRINTD(i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @rx_data_av_handler(i32* %65)
  br label %67

67:                                               ; preds = %58, %53
  br label %14

68:                                               ; preds = %14
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @DBG_IRQ, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i32, i8*, ...) @PRINTD(i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @DBG_IRQ, align 4
  %77 = load i32, i32* @DBG_WARN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i8*, ...) @PRINTD(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %71
  %82 = load i32, i32* @DBG_IRQ, align 4
  %83 = load i32, i32* @DBG_FLOW, align 4
  %84 = or i32 %82, %83
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 (i32, i8*, ...) @PRINTD(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @IRQ_NONE, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i32 @rd_regl(i32*, i32) #1

declare dso_local i32 @rx_bus_master_complete_handler(i32*) #1

declare dso_local i32 @tx_bus_master_complete_handler(i32*) #1

declare dso_local i32 @rx_data_av_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
