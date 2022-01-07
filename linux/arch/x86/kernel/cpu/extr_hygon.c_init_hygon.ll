; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_hygon.c_init_hygon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_hygon.c_init_hygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@X86_FEATURE_REP_GOOD = common dso_local global i32 0, align 4
@X86_FEATURE_ZEN = common dso_local global i32 0, align 4
@X86_FEATURE_CPB = common dso_local global i32 0, align 4
@X86_FEATURE_XMM2 = common dso_local global i32 0, align 4
@MSR_F10H_DECFG = common dso_local global i32 0, align 4
@MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT = common dso_local global i32 0, align 4
@X86_FEATURE_LFENCE_RDTSC = common dso_local global i32 0, align 4
@X86_FEATURE_ARAT = common dso_local global i32 0, align 4
@X86_FEATURE_XENPV = common dso_local global i32 0, align 4
@X86_BUG_SYSRET_SS_ATTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_hygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hygon(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %4 = call i32 @early_init_hygon(%struct.cpuinfo_x86* %3)
  %5 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %6 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %5, i32 31)
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = load i32, i32* @X86_FEATURE_REP_GOOD, align 4
  %9 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %7, i32 %8)
  %10 = call i32 (...) @hard_smp_processor_id()
  %11 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %12 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %14 = load i32, i32* @X86_FEATURE_ZEN, align 4
  %15 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %13, i32 %14)
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %17 = load i32, i32* @X86_FEATURE_CPB, align 4
  %18 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %16, i32 %17)
  %19 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %20 = call i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86* %19)
  %21 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %22 = call i32 @hygon_detect_cmp(%struct.cpuinfo_x86* %21)
  %23 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %24 = call i32 @hygon_get_topology(%struct.cpuinfo_x86* %23)
  %25 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %26 = call i32 @srat_detect_node(%struct.cpuinfo_x86* %25)
  %27 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %28 = call i32 @init_hygon_cacheinfo(%struct.cpuinfo_x86* %27)
  %29 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %30 = load i32, i32* @X86_FEATURE_XMM2, align 4
  %31 = call i64 @cpu_has(%struct.cpuinfo_x86* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load i32, i32* @MSR_F10H_DECFG, align 4
  %35 = load i32, i32* @MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT, align 4
  %36 = call i32 @msr_set_bit(i32 %34, i32 %35)
  %37 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %38 = load i32, i32* @X86_FEATURE_LFENCE_RDTSC, align 4
  %39 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %1
  %41 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %42 = load i32, i32* @X86_FEATURE_ARAT, align 4
  %43 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %41, i32 %42)
  %44 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %45 = load i32, i32* @X86_FEATURE_XENPV, align 4
  %46 = call i64 @cpu_has(%struct.cpuinfo_x86* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %50 = load i32, i32* @X86_BUG_SYSRET_SS_ATTRS, align 4
  %51 = call i32 @set_cpu_bug(%struct.cpuinfo_x86* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %40
  ret void
}

declare dso_local i32 @early_init_hygon(%struct.cpuinfo_x86*) #1

declare dso_local i32 @clear_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86*) #1

declare dso_local i32 @hygon_detect_cmp(%struct.cpuinfo_x86*) #1

declare dso_local i32 @hygon_get_topology(%struct.cpuinfo_x86*) #1

declare dso_local i32 @srat_detect_node(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_hygon_cacheinfo(%struct.cpuinfo_x86*) #1

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @msr_set_bit(i32, i32) #1

declare dso_local i32 @set_cpu_bug(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
