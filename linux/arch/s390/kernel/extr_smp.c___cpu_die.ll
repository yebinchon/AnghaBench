; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c___cpu_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c___cpu_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@pcpu_devices = common dso_local global %struct.pcpu* null, align 8
@init_mm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cpu_die(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcpu*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.pcpu*, %struct.pcpu** @pcpu_devices, align 8
  %5 = load i32, i32* %2, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %4, i64 %6
  store %struct.pcpu* %7, %struct.pcpu** %3, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %10 = call i32 @pcpu_stopped(%struct.pcpu* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @cpu_relax()
  br label %8

15:                                               ; preds = %8
  %16 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %17 = call i32 @pcpu_free_lowcore(%struct.pcpu* %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32* @mm_cpumask(%struct.TYPE_5__* @init_mm)
  %20 = call i32 @cpumask_clear_cpu(i32 %18, i32* %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @cpumask_clear_cpu(i32 %21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_mm, i32 0, i32 0, i32 0))
  ret void
}

declare dso_local i32 @pcpu_stopped(%struct.pcpu*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pcpu_free_lowcore(%struct.pcpu*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32* @mm_cpumask(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
