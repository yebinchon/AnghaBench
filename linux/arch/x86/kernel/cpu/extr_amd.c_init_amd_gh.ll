; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_init_amd_gh.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_init_amd_gh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@MSR_AMD64_BU_CFG2 = common dso_local global i32 0, align 4
@amd_erratum_383 = common dso_local global i32 0, align 4
@X86_BUG_AMD_TLB_MMATCH = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_amd_gh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_amd_gh(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = call i32 @MSR_AMD64_MCx_MASK(i32 4)
  %4 = call i32 @msr_set_bit(i32 %3, i32 10)
  %5 = load i32, i32* @MSR_AMD64_BU_CFG2, align 4
  %6 = call i32 @msr_clear_bit(i32 %5, i32 24)
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = load i32, i32* @amd_erratum_383, align 4
  %9 = call i64 @cpu_has_amd_erratum(%struct.cpuinfo_x86* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %13 = load i32, i32* @X86_BUG_AMD_TLB_MMATCH, align 4
  %14 = call i32 @set_cpu_bug(%struct.cpuinfo_x86* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @msr_set_bit(i32, i32) #1

declare dso_local i32 @MSR_AMD64_MCx_MASK(i32) #1

declare dso_local i32 @msr_clear_bit(i32, i32) #1

declare dso_local i64 @cpu_has_amd_erratum(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @set_cpu_bug(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
