; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_smp.c_smp_setup_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_smp.c_smp_setup_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boot_cpuid = common dso_local global i32 0, align 4
@FW_FEATURE_SPLPAR = common dso_local global i32 0, align 4
@of_spin_mask = common dso_local global i32 0, align 4
@CPU_STATE_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @smp_setup_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_setup_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 (...) @xive_enabled()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @xive_smp_setup_cpu()
  br label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @boot_cpuid, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 (...) @xics_setup_cpu()
  br label %13

13:                                               ; preds = %11, %7
  br label %14

14:                                               ; preds = %13, %5
  %15 = load i32, i32* @FW_FEATURE_SPLPAR, align 4
  %16 = call i64 @firmware_has_feature(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @vpa_init(i32 %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @of_spin_mask, align 4
  %24 = call i32 @cpumask_clear_cpu(i32 %22, i32 %23)
  ret void
}

declare dso_local i64 @xive_enabled(...) #1

declare dso_local i32 @xive_smp_setup_cpu(...) #1

declare dso_local i32 @xics_setup_cpu(...) #1

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @vpa_init(i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
