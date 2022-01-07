; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_IRQ = common dso_local global i32 0, align 4
@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"interrupt_handler: %p\00", align 1
@amb_mem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"irq not for me: %d\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"FYI: interrupt was %08x\00", align 1
@NUM_RX_POOLS = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"work done: %u\00", align 1
@DBG_WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"no work done\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"interrupt_handler done: %p\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@interrupt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* @DBG_IRQ, align 4
  %13 = load i32, i32* @DBG_FLOW, align 4
  %14 = or i32 %12, %13
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (i32, i8*, ...) @PRINTD(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @amb_mem, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @offsetof(i32 %18, i8* %19)
  %21 = call i8* @rd_plain(i32* %17, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @DBG_IRQ, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i32, i8*, ...) @PRINTD(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %2
  %30 = load i32, i32* @DBG_IRQ, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i32, i8*, ...) @PRINTD(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @amb_mem, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @offsetof(i32 %34, i8* %35)
  %37 = call i32 @wr_plain(i32* %33, i32 %36, i32 -1)
  store i32 0, i32* %8, align 4
  store i8 0, i8* %9, align 1
  br label %38

38:                                               ; preds = %55, %29
  %39 = load i8, i8* %9, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @NUM_RX_POOLS, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %51, %44
  %46 = load i32*, i32** %6, align 8
  %47 = load i8, i8* %9, align 1
  %48 = call i32 @rx_take(i32* %46, i8 zeroext %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %45

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i8, i8* %9, align 1
  %57 = add i8 %56, 1
  store i8 %57, i8* %9, align 1
  br label %38

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %64, %58
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @tx_take(i32* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %59

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @fill_rx_pools(i32* %71)
  %73 = load i32, i32* @DBG_IRQ, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (i32, i8*, ...) @PRINTD(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %81

76:                                               ; preds = %67
  %77 = load i32, i32* @DBG_IRQ, align 4
  %78 = load i32, i32* @DBG_WARN, align 4
  %79 = or i32 %77, %78
  %80 = call i32 (i32, i8*, ...) @PRINTD(i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %70
  %82 = load i32, i32* @DBG_IRQ, align 4
  %83 = load i32, i32* @DBG_FLOW, align 4
  %84 = or i32 %82, %83
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 (i32, i8*, ...) @PRINTD(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %24
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i8* @rd_plain(i32*, i32) #1

declare dso_local i32 @offsetof(i32, i8*) #1

declare dso_local i32 @wr_plain(i32*, i32, i32) #1

declare dso_local i32 @rx_take(i32*, i8 zeroext) #1

declare dso_local i32 @tx_take(i32*) #1

declare dso_local i32 @fill_rx_pools(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
