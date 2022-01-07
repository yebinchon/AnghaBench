; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.cpumask = type { i32 }

@leon_irq_lock = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @leon_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leon_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %16 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %15)
  %17 = call i32 @irq_choose_cpu(%struct.cpumask* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %19 = call i32 @irq_choose_cpu(%struct.cpumask* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %48

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @leon_irq_lock, i64 %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @LEON_IMASK(i32 %27)
  %29 = call i64 @LEON3_BYPASS_LOAD_PA(i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @LEON_IMASK(i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = xor i64 %33, -1
  %35 = and i64 %32, %34
  %36 = call i32 @LEON3_BYPASS_STORE_PA(i32 %31, i64 %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @LEON_IMASK(i32 %37)
  %39 = call i64 @LEON3_BYPASS_LOAD_PA(i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @LEON_IMASK(i32 %40)
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %42, %43
  %45 = call i32 @LEON3_BYPASS_STORE_PA(i32 %41, i64 %44)
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @leon_irq_lock, i64 %46)
  br label %48

48:                                               ; preds = %24, %23
  %49 = load i32, i32* @IRQ_SET_MASK_OK, align 4
  ret i32 %49
}

declare dso_local i32 @irq_choose_cpu(%struct.cpumask*) #1

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @LEON3_BYPASS_LOAD_PA(i32) #1

declare dso_local i32 @LEON_IMASK(i32) #1

declare dso_local i32 @LEON3_BYPASS_STORE_PA(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
