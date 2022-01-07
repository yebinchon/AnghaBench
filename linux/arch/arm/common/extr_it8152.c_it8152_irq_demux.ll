; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_it8152.c_it8152_irq_demux.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_it8152.c_it8152_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@IT8152_INTC_PDCNIRR = common dso_local global i32 0, align 4
@IT8152_INTC_LPCNIRR = common dso_local global i32 0, align 4
@IT8152_INTC_LDCNIRR = common dso_local global i32 0, align 4
@IT8152_PD_IRQ_COUNT = common dso_local global i32 0, align 4
@IT8152_LP_IRQ_COUNT = common dso_local global i32 0, align 4
@IT8152_LD_IRQ_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @it8152_irq_demux(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  br label %7

7:                                                ; preds = %1, %107
  %8 = load i32, i32* @IT8152_INTC_PDCNIRR, align 4
  %9 = call i32 @__raw_readl(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @IT8152_INTC_LPCNIRR, align 4
  %11 = call i32 @__raw_readl(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @IT8152_INTC_LDCNIRR, align 4
  %13 = call i32 @__raw_readl(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @IT8152_INTC_PDCNIRR, align 4
  %17 = call i32 @__raw_writel(i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @IT8152_INTC_LPCNIRR, align 4
  %21 = call i32 @__raw_writel(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @IT8152_INTC_LDCNIRR, align 4
  %25 = call i32 @__raw_writel(i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %7
  %33 = load i32, i32* @IT8152_INTC_PDCNIRR, align 4
  %34 = call i32 @__raw_readl(i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @IT8152_INTC_LPCNIRR, align 4
  %36 = call i32 @__raw_readl(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @IT8152_INTC_LDCNIRR, align 4
  %38 = call i32 @__raw_readl(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  ret void

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %7
  %48 = load i32, i32* @IT8152_PD_IRQ_COUNT, align 4
  %49 = shl i32 1, %48
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %56, %47
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @__ffs(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @IT8152_PD_IRQ(i32 %59)
  %61 = call i32 @generic_handle_irq(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %53

67:                                               ; preds = %53
  %68 = load i32, i32* @IT8152_LP_IRQ_COUNT, align 4
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %76, %67
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @__ffs(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @IT8152_LP_IRQ(i32 %79)
  %81 = call i32 @generic_handle_irq(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %73

87:                                               ; preds = %73
  %88 = load i32, i32* @IT8152_LD_IRQ_COUNT, align 4
  %89 = shl i32 1, %88
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %96, %87
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @__ffs(i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @IT8152_LD_IRQ(i32 %99)
  %101 = call i32 @generic_handle_irq(i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = shl i32 1, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %5, align 4
  br label %93

107:                                              ; preds = %93
  br label %7
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @IT8152_PD_IRQ(i32) #1

declare dso_local i32 @IT8152_LP_IRQ(i32) #1

declare dso_local i32 @IT8152_LD_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
