; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp.c_ipi_cpu_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp.c_ipi_cpu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@system_state = common dso_local global i64 0, align 8
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@stop_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CPU%u: stopping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ipi_cpu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipi_cpu_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @system_state, align 8
  %4 = load i64, i64* @SYSTEM_RUNNING, align 8
  %5 = icmp sle i64 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = call i32 @raw_spin_lock(i32* @stop_lock)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 (...) @dump_stack()
  %11 = call i32 @raw_spin_unlock(i32* @stop_lock)
  br label %12

12:                                               ; preds = %6, %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @set_cpu_online(i32 %13, i32 0)
  %15 = call i32 (...) @local_fiq_disable()
  %16 = call i32 (...) @local_irq_disable()
  br label %17

17:                                               ; preds = %12, %17
  %18 = call i32 (...) @cpu_relax()
  %19 = call i32 (...) @wfe()
  br label %17
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @set_cpu_online(i32, i32) #1

declare dso_local i32 @local_fiq_disable(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @wfe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
