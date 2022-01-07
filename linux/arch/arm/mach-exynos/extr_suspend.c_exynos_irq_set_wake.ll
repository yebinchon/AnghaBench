; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.exynos_wkup_irq* }
%struct.exynos_wkup_irq = type { i32, i64 }
%struct.irq_data = type { i64 }

@pm_data = common dso_local global %struct.TYPE_2__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@exynos_irqwake_intmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @exynos_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.exynos_wkup_irq*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pm_data, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.exynos_wkup_irq*, %struct.exynos_wkup_irq** %8, align 8
  %10 = icmp ne %struct.exynos_wkup_irq* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %54

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pm_data, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.exynos_wkup_irq*, %struct.exynos_wkup_irq** %16, align 8
  store %struct.exynos_wkup_irq* %17, %struct.exynos_wkup_irq** %6, align 8
  br label %18

18:                                               ; preds = %48, %14
  %19 = load %struct.exynos_wkup_irq*, %struct.exynos_wkup_irq** %6, align 8
  %20 = getelementptr inbounds %struct.exynos_wkup_irq, %struct.exynos_wkup_irq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = load %struct.exynos_wkup_irq*, %struct.exynos_wkup_irq** %6, align 8
  %25 = getelementptr inbounds %struct.exynos_wkup_irq, %struct.exynos_wkup_irq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %28 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.exynos_wkup_irq*, %struct.exynos_wkup_irq** %6, align 8
  %36 = getelementptr inbounds %struct.exynos_wkup_irq, %struct.exynos_wkup_irq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @exynos_irqwake_intmask, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @exynos_irqwake_intmask, align 4
  br label %47

40:                                               ; preds = %31
  %41 = load %struct.exynos_wkup_irq*, %struct.exynos_wkup_irq** %6, align 8
  %42 = getelementptr inbounds %struct.exynos_wkup_irq, %struct.exynos_wkup_irq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @exynos_irqwake_intmask, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* @exynos_irqwake_intmask, align 4
  br label %47

47:                                               ; preds = %40, %34
  store i32 0, i32* %3, align 4
  br label %54

48:                                               ; preds = %23
  %49 = load %struct.exynos_wkup_irq*, %struct.exynos_wkup_irq** %6, align 8
  %50 = getelementptr inbounds %struct.exynos_wkup_irq, %struct.exynos_wkup_irq* %49, i32 1
  store %struct.exynos_wkup_irq* %50, %struct.exynos_wkup_irq** %6, align 8
  br label %18

51:                                               ; preds = %18
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %47, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
