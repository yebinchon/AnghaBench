; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_init_speculation_control.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_init_speculation_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@X86_FEATURE_SPEC_CTRL = common dso_local global i32 0, align 4
@X86_FEATURE_IBRS = common dso_local global i32 0, align 4
@X86_FEATURE_IBPB = common dso_local global i32 0, align 4
@X86_FEATURE_MSR_SPEC_CTRL = common dso_local global i32 0, align 4
@X86_FEATURE_INTEL_STIBP = common dso_local global i32 0, align 4
@X86_FEATURE_STIBP = common dso_local global i32 0, align 4
@X86_FEATURE_SPEC_CTRL_SSBD = common dso_local global i32 0, align 4
@X86_FEATURE_VIRT_SSBD = common dso_local global i32 0, align 4
@X86_FEATURE_SSBD = common dso_local global i32 0, align 4
@X86_FEATURE_AMD_IBRS = common dso_local global i32 0, align 4
@X86_FEATURE_AMD_IBPB = common dso_local global i32 0, align 4
@X86_FEATURE_AMD_STIBP = common dso_local global i32 0, align 4
@X86_FEATURE_AMD_SSBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_speculation_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_speculation_control(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %4 = load i32, i32* @X86_FEATURE_SPEC_CTRL, align 4
  %5 = call i64 @cpu_has(%struct.cpuinfo_x86* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %9 = load i32, i32* @X86_FEATURE_IBRS, align 4
  %10 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %8, i32 %9)
  %11 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %12 = load i32, i32* @X86_FEATURE_IBPB, align 4
  %13 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %11, i32 %12)
  %14 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %15 = load i32, i32* @X86_FEATURE_MSR_SPEC_CTRL, align 4
  %16 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %14, i32 %15)
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %19 = load i32, i32* @X86_FEATURE_INTEL_STIBP, align 4
  %20 = call i64 @cpu_has(%struct.cpuinfo_x86* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %24 = load i32, i32* @X86_FEATURE_STIBP, align 4
  %25 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %28 = load i32, i32* @X86_FEATURE_SPEC_CTRL_SSBD, align 4
  %29 = call i64 @cpu_has(%struct.cpuinfo_x86* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %33 = load i32, i32* @X86_FEATURE_VIRT_SSBD, align 4
  %34 = call i64 @cpu_has(%struct.cpuinfo_x86* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31, %26
  %37 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %38 = load i32, i32* @X86_FEATURE_SSBD, align 4
  %39 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %42 = load i32, i32* @X86_FEATURE_AMD_IBRS, align 4
  %43 = call i64 @cpu_has(%struct.cpuinfo_x86* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %47 = load i32, i32* @X86_FEATURE_IBRS, align 4
  %48 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %46, i32 %47)
  %49 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %50 = load i32, i32* @X86_FEATURE_MSR_SPEC_CTRL, align 4
  %51 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %54 = load i32, i32* @X86_FEATURE_AMD_IBPB, align 4
  %55 = call i64 @cpu_has(%struct.cpuinfo_x86* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %59 = load i32, i32* @X86_FEATURE_IBPB, align 4
  %60 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %63 = load i32, i32* @X86_FEATURE_AMD_STIBP, align 4
  %64 = call i64 @cpu_has(%struct.cpuinfo_x86* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %68 = load i32, i32* @X86_FEATURE_STIBP, align 4
  %69 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %67, i32 %68)
  %70 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %71 = load i32, i32* @X86_FEATURE_MSR_SPEC_CTRL, align 4
  %72 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %75 = load i32, i32* @X86_FEATURE_AMD_SSBD, align 4
  %76 = call i64 @cpu_has(%struct.cpuinfo_x86* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %80 = load i32, i32* @X86_FEATURE_SSBD, align 4
  %81 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %79, i32 %80)
  %82 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %83 = load i32, i32* @X86_FEATURE_MSR_SPEC_CTRL, align 4
  %84 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %82, i32 %83)
  %85 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %86 = load i32, i32* @X86_FEATURE_VIRT_SSBD, align 4
  %87 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %73
  ret void
}

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @clear_cpu_cap(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
