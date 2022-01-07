; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_init_amd_zn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_init_amd_zn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@X86_FEATURE_ZEN = common dso_local global i32 0, align 4
@X86_FEATURE_HYPERVISOR = common dso_local global i32 0, align 4
@X86_FEATURE_CPB = common dso_local global i32 0, align 4
@node_reclaim_distance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_amd_zn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_amd_zn(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %4 = load i32, i32* @X86_FEATURE_ZEN, align 4
  %5 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %3, i32 %4)
  %6 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %7 = load i32, i32* @X86_FEATURE_HYPERVISOR, align 4
  %8 = call i32 @cpu_has(%struct.cpuinfo_x86* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %12 = load i32, i32* @X86_FEATURE_CPB, align 4
  %13 = call i32 @cpu_has(%struct.cpuinfo_x86* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %17 = load i32, i32* @X86_FEATURE_CPB, align 4
  %18 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %10, %1
  ret void
}

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @cpu_has(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
