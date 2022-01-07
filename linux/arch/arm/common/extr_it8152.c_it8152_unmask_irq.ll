; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_it8152.c_it8152_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_it8152.c_it8152_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IT8152_INTC_LDCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_LPCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_PDCNIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @it8152_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8152_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @IT8152_LD_IRQ(i32 0)
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i32, i32* @IT8152_INTC_LDCNIMR, align 4
  %12 = call i32 @__raw_readl(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @IT8152_LD_IRQ(i32 0)
  %15 = sub i32 %13, %14
  %16 = shl i32 1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %12, %17
  %19 = load i32, i32* @IT8152_INTC_LDCNIMR, align 4
  %20 = call i32 @__raw_writel(i32 %18, i32 %19)
  br label %53

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @IT8152_LP_IRQ(i32 0)
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* @IT8152_INTC_LPCNIMR, align 4
  %27 = call i32 @__raw_readl(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @IT8152_LP_IRQ(i32 0)
  %30 = sub i32 %28, %29
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %27, %32
  %34 = load i32, i32* @IT8152_INTC_LPCNIMR, align 4
  %35 = call i32 @__raw_writel(i32 %33, i32 %34)
  br label %52

36:                                               ; preds = %21
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @IT8152_PD_IRQ(i32 0)
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* @IT8152_INTC_PDCNIMR, align 4
  %42 = call i32 @__raw_readl(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @IT8152_PD_IRQ(i32 0)
  %45 = sub i32 %43, %44
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %42, %47
  %49 = load i32, i32* @IT8152_INTC_PDCNIMR, align 4
  %50 = call i32 @__raw_writel(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40, %36
  br label %52

52:                                               ; preds = %51, %25
  br label %53

53:                                               ; preds = %52, %10
  ret void
}

declare dso_local i32 @IT8152_LD_IRQ(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @IT8152_LP_IRQ(i32) #1

declare dso_local i32 @IT8152_PD_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
