; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/irq/extr_intc-sh5.c_disable_intc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/irq/extr_intc-sh5.c_disable_intc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@INTC_INTDSB_0 = common dso_local global i64 0, align 8
@INTC_INTDSB_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @disable_intc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_intc_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i64, i64* @INTC_INTDSB_0, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  br label %22

16:                                               ; preds = %1
  %17 = load i64, i64* @INTC_INTDSB_1, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sub i32 %18, 32
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %16, %11
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @__raw_writel(i64 %23, i64 %24)
  ret void
}

declare dso_local i32 @__raw_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
