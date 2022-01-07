; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_locomo.c_locomo_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_locomo.c_locomo_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.locomo = type { i32, i64 }

@LOCOMO_ICR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @locomo_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locomo_mask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.locomo*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.locomo* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.locomo* %6, %struct.locomo** %3, align 8
  %7 = load %struct.locomo*, %struct.locomo** %3, align 8
  %8 = getelementptr inbounds %struct.locomo, %struct.locomo* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LOCOMO_ICR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @locomo_readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.locomo*, %struct.locomo** %3, align 8
  %17 = getelementptr inbounds %struct.locomo, %struct.locomo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %15, %18
  %20 = shl i32 16, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.locomo*, %struct.locomo** %3, align 8
  %26 = getelementptr inbounds %struct.locomo, %struct.locomo* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LOCOMO_ICR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @locomo_writel(i32 %24, i64 %29)
  ret void
}

declare dso_local %struct.locomo* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @locomo_readl(i64) #1

declare dso_local i32 @locomo_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
