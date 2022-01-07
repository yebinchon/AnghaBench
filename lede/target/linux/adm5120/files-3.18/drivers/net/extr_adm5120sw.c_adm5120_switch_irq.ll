; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_irq.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SWITCH_INTS_ALL = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SWITCH_INT_RLD = common dso_local global i32 0, align 4
@SWITCH_INT_LDF = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@SWITCH_INT_SLD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SWITCH_INTS_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @adm5120_switch_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_switch_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = call i32 (...) @sw_int_status()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @SWITCH_INTS_ALL, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sw_int_ack(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SWITCH_INT_RLD, align 4
  %20 = load i32, i32* @SWITCH_INT_LDF, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @RX_RING_SIZE, align 4
  %26 = call i32 @adm5120_switch_rx(i32 %25)
  br label %27

27:                                               ; preds = %24, %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SWITCH_INT_SLD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @adm5120_switch_tx()
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @sw_int_status(...) #1

declare dso_local i32 @sw_int_ack(i32) #1

declare dso_local i32 @adm5120_switch_rx(i32) #1

declare dso_local i32 @adm5120_switch_tx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
