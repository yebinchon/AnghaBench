; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_hw_breakpoint_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_hw_breakpoint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_args = type { %struct.pt_regs* }
%struct.pt_regs = type { i64 }
%struct.perf_event = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.arch_hw_breakpoint = type { i32, i32 }

@NOTIFY_STOP = common dso_local global i32 0, align 4
@bp_per_reg = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@ptrace_triggered = common dso_local global i64 0, align 8
@HW_BRK_TYPE_EXTRANEOUS_IRQ = common dso_local global i32 0, align 4
@CONFIG_PPC_8xx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_breakpoint_handler(%struct.die_args* %0) #0 {
  %2 = alloca %struct.die_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.arch_hw_breakpoint*, align 8
  %7 = alloca i64, align 8
  store %struct.die_args* %0, %struct.die_args** %2, align 8
  %8 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.die_args*, %struct.die_args** %2, align 8
  %10 = getelementptr inbounds %struct.die_args, %struct.die_args* %9, i32 0, i32 0
  %11 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  store %struct.pt_regs* %11, %struct.pt_regs** %5, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = call i32 (...) @hw_breakpoint_disable()
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load i32, i32* @bp_per_reg, align 4
  %18 = call %struct.perf_event* @__this_cpu_read(i32 %17)
  store %struct.perf_event* %18, %struct.perf_event** %4, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %20 = icmp ne %struct.perf_event* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %22, i32* %3, align 4
  br label %94

23:                                               ; preds = %1
  %24 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %25 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %24)
  store %struct.arch_hw_breakpoint* %25, %struct.arch_hw_breakpoint** %6, align 8
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ptrace_triggered, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %34 = call i32 @perf_bp_event(%struct.perf_event* %32, %struct.pt_regs* %33)
  %35 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %35, i32* %3, align 4
  br label %94

36:                                               ; preds = %23
  %37 = load i32, i32* @HW_BRK_TYPE_EXTRANEOUS_IRQ, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %40 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %36
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %52 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %50, %54
  %56 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %57 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %49, %36
  %62 = load i32, i32* @HW_BRK_TYPE_EXTRANEOUS_IRQ, align 4
  %63 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %64 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %49
  %68 = load i32, i32* @CONFIG_PPC_8xx, align 4
  %69 = call i32 @IS_ENABLED(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %67
  %72 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %73 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %74 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %75 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @stepping_handler(%struct.pt_regs* %72, %struct.perf_event* %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %94

80:                                               ; preds = %71, %67
  %81 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %82 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @HW_BRK_TYPE_EXTRANEOUS_IRQ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %89 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %90 = call i32 @perf_bp_event(%struct.perf_event* %88, %struct.pt_regs* %89)
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %93 = call i32 @__set_breakpoint(%struct.arch_hw_breakpoint* %92)
  br label %94

94:                                               ; preds = %91, %79, %31, %21
  %95 = call i32 (...) @rcu_read_unlock()
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @hw_breakpoint_disable(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.perf_event* @__this_cpu_read(i32) #1

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @perf_bp_event(%struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @stepping_handler(%struct.pt_regs*, %struct.perf_event*, i32) #1

declare dso_local i32 @__set_breakpoint(%struct.arch_hw_breakpoint*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
