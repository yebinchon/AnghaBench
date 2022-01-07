; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.perf_event* }
%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i32 }

@bp_per_reg = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_install_hw_breakpoint(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arch_hw_breakpoint*, align 8
  %4 = alloca %struct.perf_event**, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %5)
  store %struct.arch_hw_breakpoint* %6, %struct.arch_hw_breakpoint** %3, align 8
  %7 = call %struct.perf_event** @this_cpu_ptr(i32* @bp_per_reg)
  store %struct.perf_event** %7, %struct.perf_event*** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event**, %struct.perf_event*** %4, align 8
  store %struct.perf_event* %8, %struct.perf_event** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %15 = icmp ne %struct.perf_event* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %18 = call i32 @__set_breakpoint(%struct.arch_hw_breakpoint* %17)
  br label %19

19:                                               ; preds = %16, %1
  ret i32 0
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local %struct.perf_event** @this_cpu_ptr(i32*) #1

declare dso_local i32 @__set_breakpoint(%struct.arch_hw_breakpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
