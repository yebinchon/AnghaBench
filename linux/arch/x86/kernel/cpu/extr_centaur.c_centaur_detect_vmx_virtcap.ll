; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_centaur.c_centaur_detect_vmx_virtcap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_centaur.c_centaur_detect_vmx_virtcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@MSR_IA32_VMX_PROCBASED_CTLS = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW = common dso_local global i32 0, align 4
@X86_FEATURE_TPR_SHADOW = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS_VNMI = common dso_local global i32 0, align 4
@X86_FEATURE_VNMI = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS_2ND_CTLS = common dso_local global i32 0, align 4
@MSR_IA32_VMX_PROCBASED_CTLS2 = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS2_VIRT_APIC = common dso_local global i32 0, align 4
@X86_FEATURE_FLEXPRIORITY = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS2_EPT = common dso_local global i32 0, align 4
@X86_FEATURE_EPT = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS2_VPID = common dso_local global i32 0, align 4
@X86_FEATURE_VPID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @centaur_detect_vmx_virtcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @centaur_detect_vmx_virtcap(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %7 = load i32, i32* @MSR_IA32_VMX_PROCBASED_CTLS, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @rdmsr(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %20 = load i32, i32* @X86_FEATURE_TPR_SHADOW, align 4
  %21 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @X86_VMX_FEATURE_PROC_CTLS_VNMI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %29 = load i32, i32* @X86_FEATURE_VNMI, align 4
  %30 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @X86_VMX_FEATURE_PROC_CTLS_2ND_CTLS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %31
  %37 = load i32, i32* @MSR_IA32_VMX_PROCBASED_CTLS2, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @rdmsr(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @X86_VMX_FEATURE_PROC_CTLS2_VIRT_APIC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %55 = load i32, i32* @X86_FEATURE_FLEXPRIORITY, align 4
  %56 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48, %36
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @X86_VMX_FEATURE_PROC_CTLS2_EPT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %64 = load i32, i32* @X86_FEATURE_EPT, align 4
  %65 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @X86_VMX_FEATURE_PROC_CTLS2_VPID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %73 = load i32, i32* @X86_FEATURE_VPID, align 4
  %74 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %31
  ret void
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
