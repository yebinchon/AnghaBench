; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_tc2_pm.c_tc2_pm_cluster_cache_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_tc2_pm.c_tc2_pm_cluster_cache_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_CPU_PART_CORTEX_A15 = common dso_local global i64 0, align 8
@all = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tc2_pm_cluster_cache_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc2_pm_cluster_cache_disable() #0 {
  %1 = call i64 (...) @read_cpuid_part()
  %2 = load i64, i64* @ARM_CPU_PART_CORTEX_A15, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3 \0A\09isb\09\0A\09dsb\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 1024) #2, !srcloc !2
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, i32* @all, align 4
  %7 = call i32 @v7_exit_coherency_flush(i32 %6)
  %8 = call i32 (...) @read_cpuid_mpidr()
  %9 = call i32 @cci_disable_port_by_cpu(i32 %8)
  ret void
}

declare dso_local i64 @read_cpuid_part(...) #1

declare dso_local i32 @v7_exit_coherency_flush(i32) #1

declare dso_local i32 @cci_disable_port_by_cpu(i32) #1

declare dso_local i32 @read_cpuid_mpidr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 465, i32 495, i32 508}
