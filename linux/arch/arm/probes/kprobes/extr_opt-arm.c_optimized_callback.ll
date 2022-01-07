; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_opt-arm.c_optimized_callback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_opt-arm.c_optimized_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimized_kprobe = type { %struct.kprobe }
%struct.kprobe = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 (i32, %struct.TYPE_2__*, %struct.pt_regs*)*, i32 }
%struct.pt_regs = type { i64, i64 }
%struct.kprobe_ctlblk = type { i32 }

@current_kprobe = common dso_local global i32 0, align 4
@KPROBE_HIT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optimized_kprobe*, %struct.pt_regs*)* @optimized_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimized_callback(%struct.optimized_kprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.optimized_kprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kprobe*, align 8
  %7 = alloca %struct.kprobe_ctlblk*, align 8
  store %struct.optimized_kprobe* %0, %struct.optimized_kprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %8 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %9 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %8, i32 0, i32 0
  store %struct.kprobe* %9, %struct.kprobe** %6, align 8
  %10 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %11 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 1
  store i64 -1, i64* %17, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %20, %struct.kprobe_ctlblk** %7, align 8
  %21 = call i64 (...) @kprobe_running()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %25 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %24, i32 0, i32 0
  %26 = call i32 @kprobes_inc_nmissed_count(%struct.kprobe* %25)
  br label %41

27:                                               ; preds = %2
  %28 = load i32, i32* @current_kprobe, align 4
  %29 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %30 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %29, i32 0, i32 0
  %31 = call i32 @__this_cpu_write(i32 %28, %struct.kprobe* %30)
  %32 = load i32, i32* @KPROBE_HIT_ACTIVE, align 4
  %33 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %34 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %36 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %35, i32 0, i32 0
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = call i32 @opt_pre_handler(%struct.kprobe* %36, %struct.pt_regs* %37)
  %39 = load i32, i32* @current_kprobe, align 4
  %40 = call i32 @__this_cpu_write(i32 %39, %struct.kprobe* null)
  br label %41

41:                                               ; preds = %27, %23
  %42 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %43 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %41
  %48 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %49 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32, %struct.TYPE_2__*, %struct.pt_regs*)*, i32 (i32, %struct.TYPE_2__*, %struct.pt_regs*)** %51, align 8
  %53 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %54 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %57 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %56, i32 0, i32 0
  %58 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %59 = call i32 %52(i32 %55, %struct.TYPE_2__* %57, %struct.pt_regs* %58)
  br label %60

60:                                               ; preds = %47, %41
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local i64 @kprobe_running(...) #1

declare dso_local i32 @kprobes_inc_nmissed_count(%struct.kprobe*) #1

declare dso_local i32 @__this_cpu_write(i32, %struct.kprobe*) #1

declare dso_local i32 @opt_pre_handler(%struct.kprobe*, %struct.pt_regs*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
