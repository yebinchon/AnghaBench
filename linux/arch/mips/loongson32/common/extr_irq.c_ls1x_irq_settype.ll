; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson32/common/extr_irq.c_ls1x_irq_settype.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson32/common/extr_irq.c_ls1x_irq_settype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@LS1X_IRQ_BASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @ls1x_irq_settype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1x_irq_settype(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LS1X_IRQ_BASE, align 4
  %12 = sub nsw i32 %10, %11
  %13 = and i32 %12, 31
  store i32 %13, i32* %6, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LS1X_IRQ_BASE, align 4
  %18 = sub nsw i32 %16, %17
  %19 = ashr i32 %18, 5
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %122 [
    i32 130, label %21
    i32 129, label %41
    i32 131, label %62
    i32 132, label %81
    i32 133, label %101
    i32 128, label %121
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @LS1X_INTC_INTPOL(i32 %22)
  %24 = call i32 @__raw_readl(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  %27 = or i32 %24, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @LS1X_INTC_INTPOL(i32 %28)
  %30 = call i32 @__raw_writel(i32 %27, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @LS1X_INTC_INTEDGE(i32 %31)
  %33 = call i32 @__raw_readl(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @LS1X_INTC_INTEDGE(i32 %38)
  %40 = call i32 @__raw_writel(i32 %37, i32 %39)
  br label %125

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @LS1X_INTC_INTPOL(i32 %42)
  %44 = call i32 @__raw_readl(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %44, %47
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @LS1X_INTC_INTPOL(i32 %49)
  %51 = call i32 @__raw_writel(i32 %48, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @LS1X_INTC_INTEDGE(i32 %52)
  %54 = call i32 @__raw_readl(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %54, %57
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @LS1X_INTC_INTEDGE(i32 %59)
  %61 = call i32 @__raw_writel(i32 %58, i32 %60)
  br label %125

62:                                               ; preds = %2
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @LS1X_INTC_INTPOL(i32 %63)
  %65 = call i32 @__raw_readl(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 1, %66
  %68 = or i32 %65, %67
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @LS1X_INTC_INTPOL(i32 %69)
  %71 = call i32 @__raw_writel(i32 %68, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @LS1X_INTC_INTEDGE(i32 %72)
  %74 = call i32 @__raw_readl(i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 1, %75
  %77 = or i32 %74, %76
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @LS1X_INTC_INTEDGE(i32 %78)
  %80 = call i32 @__raw_writel(i32 %77, i32 %79)
  br label %125

81:                                               ; preds = %2
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @LS1X_INTC_INTPOL(i32 %82)
  %84 = call i32 @__raw_readl(i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %84, %87
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @LS1X_INTC_INTPOL(i32 %89)
  %91 = call i32 @__raw_writel(i32 %88, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @LS1X_INTC_INTEDGE(i32 %92)
  %94 = call i32 @__raw_readl(i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 1, %95
  %97 = or i32 %94, %96
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @LS1X_INTC_INTEDGE(i32 %98)
  %100 = call i32 @__raw_writel(i32 %97, i32 %99)
  br label %125

101:                                              ; preds = %2
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @LS1X_INTC_INTPOL(i32 %102)
  %104 = call i32 @__raw_readl(i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = shl i32 1, %105
  %107 = xor i32 %106, -1
  %108 = and i32 %104, %107
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @LS1X_INTC_INTPOL(i32 %109)
  %111 = call i32 @__raw_writel(i32 %108, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @LS1X_INTC_INTEDGE(i32 %112)
  %114 = call i32 @__raw_readl(i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = shl i32 1, %115
  %117 = or i32 %114, %116
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @LS1X_INTC_INTEDGE(i32 %118)
  %120 = call i32 @__raw_writel(i32 %117, i32 %119)
  br label %125

121:                                              ; preds = %2
  br label %125

122:                                              ; preds = %2
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %121, %101, %81, %62, %41, %21
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %122
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @LS1X_INTC_INTPOL(i32) #1

declare dso_local i32 @LS1X_INTC_INTEDGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
