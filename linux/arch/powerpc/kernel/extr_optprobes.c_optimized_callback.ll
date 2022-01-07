; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_optimized_callback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_optimized_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimized_kprobe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.pt_regs = type { i64 }
%struct.TYPE_7__ = type { i32 }

@current_kprobe = common dso_local global i32 0, align 4
@KPROBE_HIT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optimized_kprobe*, %struct.pt_regs*)* @optimized_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimized_callback(%struct.optimized_kprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.optimized_kprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  store %struct.optimized_kprobe* %0, %struct.optimized_kprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %6 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %5, i32 0, i32 0
  %7 = call i64 @kprobe_disabled(%struct.TYPE_6__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %40

10:                                               ; preds = %2
  %11 = call i32 (...) @preempt_disable()
  %12 = call i64 (...) @kprobe_running()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %16 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %15, i32 0, i32 0
  %17 = call i32 @kprobes_inc_nmissed_count(%struct.TYPE_6__* %16)
  br label %38

18:                                               ; preds = %10
  %19 = load i32, i32* @current_kprobe, align 4
  %20 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %21 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %20, i32 0, i32 0
  %22 = call i32 @__this_cpu_write(i32 %19, %struct.TYPE_6__* %21)
  %23 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %24 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @KPROBE_HIT_ACTIVE, align 4
  %30 = call %struct.TYPE_7__* (...) @get_kprobe_ctlblk()
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %33 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %32, i32 0, i32 0
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = call i32 @opt_pre_handler(%struct.TYPE_6__* %33, %struct.pt_regs* %34)
  %36 = load i32, i32* @current_kprobe, align 4
  %37 = call i32 @__this_cpu_write(i32 %36, %struct.TYPE_6__* null)
  br label %38

38:                                               ; preds = %18, %14
  %39 = call i32 (...) @preempt_enable_no_resched()
  br label %40

40:                                               ; preds = %38, %9
  ret void
}

declare dso_local i64 @kprobe_disabled(%struct.TYPE_6__*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @kprobe_running(...) #1

declare dso_local i32 @kprobes_inc_nmissed_count(%struct.TYPE_6__*) #1

declare dso_local i32 @__this_cpu_write(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @get_kprobe_ctlblk(...) #1

declare dso_local i32 @opt_pre_handler(%struct.TYPE_6__*, %struct.pt_regs*) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
