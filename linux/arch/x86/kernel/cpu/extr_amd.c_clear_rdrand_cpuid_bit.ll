; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_clear_rdrand_cpuid_bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_clear_rdrand_cpuid_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@CONFIG_PM_SLEEP = common dso_local global i32 0, align 4
@rdrand_force = common dso_local global i64 0, align 8
@MSR_AMD64_CPUID_FN_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"BIOS may not properly restore RDRAND after suspend, but hypervisor does not support hiding RDRAND via CPUID.\0A\00", align 1
@X86_FEATURE_RDRAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [108 x i8] c"BIOS may not properly restore RDRAND after suspend, hiding RDRAND via CPUID. Use rdrand=force to reenable.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @clear_rdrand_cpuid_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_rdrand_cpuid_bit(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load i32, i32* @CONFIG_PM_SLEEP, align 4
  %4 = call i32 @IS_ENABLED(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = call i32 @cpuid_ecx(i32 1)
  %9 = call i32 @BIT(i32 30)
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i64, i64* @rdrand_force, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %7
  br label %30

16:                                               ; preds = %12
  %17 = load i32, i32* @MSR_AMD64_CPUID_FN_1, align 4
  %18 = call i32 @msr_clear_bit(i32 %17, i32 62)
  %19 = call i32 @cpuid_ecx(i32 1)
  %20 = call i32 @BIT(i32 30)
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @pr_info_once(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0))
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %27 = load i32, i32* @X86_FEATURE_RDRAND, align 4
  %28 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %26, i32 %27)
  %29 = call i32 @pr_info_once(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %23, %15, %6
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @cpuid_ecx(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msr_clear_bit(i32, i32) #1

declare dso_local i32 @pr_info_once(i8*) #1

declare dso_local i32 @clear_cpu_cap(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
