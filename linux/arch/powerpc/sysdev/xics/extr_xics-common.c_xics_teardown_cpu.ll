; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_xics-common.c_xics_teardown_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_xics-common.c_xics_teardown_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (i32)* }
%struct.xics_cppr = type { i64 }

@xics_cppr = common dso_local global i32 0, align 4
@icp_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xics_teardown_cpu() #0 {
  %1 = alloca %struct.xics_cppr*, align 8
  %2 = call %struct.xics_cppr* @this_cpu_ptr(i32* @xics_cppr)
  store %struct.xics_cppr* %2, %struct.xics_cppr** %1, align 8
  %3 = load %struct.xics_cppr*, %struct.xics_cppr** %1, align 8
  %4 = getelementptr inbounds %struct.xics_cppr, %struct.xics_cppr* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icp_ops, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = call i32 %7(i32 0)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icp_ops, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  ret void
}

declare dso_local %struct.xics_cppr* @this_cpu_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
