; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c_optimized_callback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c_optimized_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimized_kprobe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.pt_regs = type { i64, i64, i64, i32 }
%struct.kprobe_ctlblk = type { i32 }

@__KERNEL_CS = common dso_local global i32 0, align 4
@INT3_SIZE = common dso_local global i64 0, align 8
@current_kprobe = common dso_local global i32 0, align 4
@KPROBE_HIT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optimized_kprobe*, %struct.pt_regs*)* @optimized_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimized_callback(%struct.optimized_kprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.optimized_kprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.kprobe_ctlblk*, align 8
  store %struct.optimized_kprobe* %0, %struct.optimized_kprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %7 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %6, i32 0, i32 0
  %8 = call i64 @kprobe_disabled(%struct.TYPE_5__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %49

11:                                               ; preds = %2
  %12 = call i32 (...) @preempt_disable()
  %13 = call i64 (...) @kprobe_running()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %17 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %16, i32 0, i32 0
  %18 = call i32 @kprobes_inc_nmissed_count(%struct.TYPE_5__* %17)
  br label %47

19:                                               ; preds = %11
  %20 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %20, %struct.kprobe_ctlblk** %5, align 8
  %21 = load i32, i32* @__KERNEL_CS, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %25 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INT3_SIZE, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  store i64 -1, i64* %33, align 8
  %34 = load i32, i32* @current_kprobe, align 4
  %35 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %36 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %35, i32 0, i32 0
  %37 = call i32 @__this_cpu_write(i32 %34, %struct.TYPE_5__* %36)
  %38 = load i32, i32* @KPROBE_HIT_ACTIVE, align 4
  %39 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %40 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %42 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %41, i32 0, i32 0
  %43 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %44 = call i32 @opt_pre_handler(%struct.TYPE_5__* %42, %struct.pt_regs* %43)
  %45 = load i32, i32* @current_kprobe, align 4
  %46 = call i32 @__this_cpu_write(i32 %45, %struct.TYPE_5__* null)
  br label %47

47:                                               ; preds = %19, %15
  %48 = call i32 (...) @preempt_enable()
  br label %49

49:                                               ; preds = %47, %10
  ret void
}

declare dso_local i64 @kprobe_disabled(%struct.TYPE_5__*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @kprobe_running(...) #1

declare dso_local i32 @kprobes_inc_nmissed_count(%struct.TYPE_5__*) #1

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local i32 @__this_cpu_write(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @opt_pre_handler(%struct.TYPE_5__*, %struct.pt_regs*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
