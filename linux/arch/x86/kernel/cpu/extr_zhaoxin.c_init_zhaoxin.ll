; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_zhaoxin.c_init_zhaoxin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_zhaoxin.c_init_zhaoxin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }

@X86_FEATURE_ARCH_PERFMON = common dso_local global i32 0, align 4
@X86_FEATURE_VMX = common dso_local global i32 0, align 4
@X86_FEATURE_LFENCE_RDTSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_zhaoxin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zhaoxin(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %5 = call i32 @early_init_zhaoxin(%struct.cpuinfo_x86* %4)
  %6 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %7 = call i32 @init_intel_cacheinfo(%struct.cpuinfo_x86* %6)
  %8 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %9 = call i32 @detect_num_cpu_cores(%struct.cpuinfo_x86* %8)
  %10 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %11 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 9
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = call i32 @cpuid_eax(i32 10)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 255
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %26 = load i32, i32* @X86_FEATURE_ARCH_PERFMON, align 4
  %27 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %19, %14
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %31 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 6
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %36 = call i32 @init_zhaoxin_cap(%struct.cpuinfo_x86* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %39 = load i32, i32* @X86_FEATURE_VMX, align 4
  %40 = call i64 @cpu_has(%struct.cpuinfo_x86* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %44 = call i32 @zhaoxin_detect_vmx_virtcap(%struct.cpuinfo_x86* %43)
  br label %45

45:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @early_init_zhaoxin(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_intel_cacheinfo(%struct.cpuinfo_x86*) #1

declare dso_local i32 @detect_num_cpu_cores(%struct.cpuinfo_x86*) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @init_zhaoxin_cap(%struct.cpuinfo_x86*) #1

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @zhaoxin_detect_vmx_virtcap(%struct.cpuinfo_x86*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
