; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_inject.c_mce_irq_ipi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_inject.c_mce_irq_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32 }

@injectm = common dso_local global i32 0, align 4
@mce_inject_cpumask = common dso_local global i32 0, align 4
@MCJ_EXCEPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mce_irq_ipi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_irq_ipi(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mce*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = call %struct.mce* @this_cpu_ptr(i32* @injectm)
  store %struct.mce* %6, %struct.mce** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @mce_inject_cpumask, align 4
  %9 = call i64 @cpumask_test_cpu(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.mce*, %struct.mce** %4, align 8
  %13 = getelementptr inbounds %struct.mce, %struct.mce* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MCJ_EXCEPTION, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @mce_inject_cpumask, align 4
  %21 = call i32 @cpumask_clear_cpu(i32 %19, i32 %20)
  %22 = load %struct.mce*, %struct.mce** %4, align 8
  %23 = call i32 @raise_exception(%struct.mce* %22, i32* null)
  br label %24

24:                                               ; preds = %18, %11, %1
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.mce* @this_cpu_ptr(i32*) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @raise_exception(%struct.mce*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
