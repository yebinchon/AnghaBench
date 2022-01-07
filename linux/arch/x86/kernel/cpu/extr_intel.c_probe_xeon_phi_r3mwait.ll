; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_probe_xeon_phi_r3mwait.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_probe_xeon_phi_r3mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }

@ring3mwait_disabled = common dso_local global i64 0, align 8
@X86_FEATURE_RING3MWAIT = common dso_local global i32 0, align 4
@msr_misc_features_shadow = common dso_local global i32 0, align 4
@MSR_MISC_FEATURES_ENABLES_RING3MWAIT_BIT = common dso_local global i64 0, align 8
@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 4
@HWCAP2_RING3MWAIT = common dso_local global i32 0, align 4
@ELF_HWCAP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @probe_xeon_phi_r3mwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_xeon_phi_r3mwait(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %4 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 6
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %10 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %13 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %8, %8
  br label %14

13:                                               ; preds = %8
  br label %32

14:                                               ; preds = %12
  %15 = load i64, i64* @ring3mwait_disabled, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %32

18:                                               ; preds = %14
  %19 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %20 = load i32, i32* @X86_FEATURE_RING3MWAIT, align 4
  %21 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %19, i32 %20)
  %22 = load i32, i32* @msr_misc_features_shadow, align 4
  %23 = load i64, i64* @MSR_MISC_FEATURES_ENABLES_RING3MWAIT_BIT, align 8
  %24 = shl i64 1, %23
  %25 = call i32 @this_cpu_or(i32 %22, i64 %24)
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %27 = icmp eq %struct.cpuinfo_x86* %26, @boot_cpu_data
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @HWCAP2_RING3MWAIT, align 4
  %30 = load i32, i32* @ELF_HWCAP2, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @ELF_HWCAP2, align 4
  br label %32

32:                                               ; preds = %7, %13, %17, %28, %18
  ret void
}

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @this_cpu_or(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
