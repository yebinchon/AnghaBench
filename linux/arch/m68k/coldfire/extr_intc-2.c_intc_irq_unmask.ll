; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-2.c_intc_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-2.c_intc_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@MCFINT_VECBASE = common dso_local global i32 0, align 4
@MCFICM_INTC0 = common dso_local global i64 0, align 8
@MCFINTC_IMRH = common dso_local global i64 0, align 8
@MCFINTC_IMRL = common dso_local global i64 0, align 8
@MCFICM_INTC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @intc_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MCFINT_VECBASE, align 4
  %11 = sub i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @MCFICM_INTC0, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @MCFINTC_IMRH, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @MCFINTC_IMRL, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 31
  %26 = shl i32 1, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @__raw_readl(i64 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @__raw_writel(i32 %39, i64 %40)
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
