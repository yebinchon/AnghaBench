; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_hygon.c_early_init_hygon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_hygon.c_early_init_hygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }

@X86_FEATURE_K8 = common dso_local global i32 0, align 4
@MSR_AMD64_PATCH_LEVEL = common dso_local global i32 0, align 4
@X86_FEATURE_CONSTANT_TSC = common dso_local global i32 0, align 4
@X86_FEATURE_NONSTOP_TSC = common dso_local global i32 0, align 4
@X86_FEATURE_ACC_POWER = common dso_local global i32 0, align 4
@X86_FEATURE_VMMCALL = common dso_local global i32 0, align 4
@X86_FEATURE_APIC = common dso_local global i32 0, align 4
@X86_FEATURE_EXTD_APICID = common dso_local global i32 0, align 4
@X86_FEATURE_SYSCALL32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @early_init_hygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_init_hygon(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %5 = call i32 @early_init_hygon_mc(%struct.cpuinfo_x86* %4)
  %6 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %7 = load i32, i32* @X86_FEATURE_K8, align 4
  %8 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %6, i32 %7)
  %9 = load i32, i32* @MSR_AMD64_PATCH_LEVEL, align 4
  %10 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %11 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %10, i32 0, i32 1
  %12 = call i32 @rdmsr_safe(i32 %9, i32* %11, i32* %3)
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %14 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 256
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %20 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %21 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %19, i32 %20)
  %22 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %23 = load i32, i32* @X86_FEATURE_NONSTOP_TSC, align 4
  %24 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BIT(i32 12)
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %34 = load i32, i32* @X86_FEATURE_ACC_POWER, align 4
  %35 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %38 = load i32, i32* @X86_FEATURE_VMMCALL, align 4
  %39 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %37, i32 %38)
  %40 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %41 = call i32 @hygon_get_topology_early(%struct.cpuinfo_x86* %40)
  ret void
}

declare dso_local i32 @early_init_hygon_mc(%struct.cpuinfo_x86*) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @rdmsr_safe(i32, i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hygon_get_topology_early(%struct.cpuinfo_x86*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
