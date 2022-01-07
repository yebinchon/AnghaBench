; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_detect_vmx_virtcap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_detect_vmx_virtcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@X86_FEATURE_TPR_SHADOW = common dso_local global i32 0, align 4
@X86_FEATURE_VNMI = common dso_local global i32 0, align 4
@X86_FEATURE_FLEXPRIORITY = common dso_local global i32 0, align 4
@X86_FEATURE_EPT = common dso_local global i32 0, align 4
@X86_FEATURE_VPID = common dso_local global i32 0, align 4
@X86_FEATURE_EPT_AD = common dso_local global i32 0, align 4
@MSR_IA32_VMX_PROCBASED_CTLS = common dso_local global i32 0, align 4
@MSR_IA32_VMX_PROCBASED_CTLS2 = common dso_local global i32 0, align 4
@MSR_IA32_VMX_EPT_VPID_CAP = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS2_EPT = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS2_VIRT_APIC = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS2_VPID = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS_2ND_CTLS = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW = common dso_local global i32 0, align 4
@X86_VMX_FEATURE_PROC_CTLS_VNMI = common dso_local global i32 0, align 4
@x86_VMX_FEATURE_EPT_CAP_AD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @detect_vmx_virtcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_vmx_virtcap(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %9 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %10 = load i32, i32* @X86_FEATURE_TPR_SHADOW, align 4
  %11 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %9, i32 %10)
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %13 = load i32, i32* @X86_FEATURE_VNMI, align 4
  %14 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %12, i32 %13)
  %15 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %16 = load i32, i32* @X86_FEATURE_FLEXPRIORITY, align 4
  %17 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %15, i32 %16)
  %18 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %19 = load i32, i32* @X86_FEATURE_EPT, align 4
  %20 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %18, i32 %19)
  %21 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %22 = load i32, i32* @X86_FEATURE_VPID, align 4
  %23 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %21, i32 %22)
  %24 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %25 = load i32, i32* @X86_FEATURE_EPT_AD, align 4
  %26 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %24, i32 %25)
  %27 = load i32, i32* @MSR_IA32_VMX_PROCBASED_CTLS, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @rdmsr(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 2097152
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %39 = load i32, i32* @X86_FEATURE_TPR_SHADOW, align 4
  %40 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 4194304
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %47 = load i32, i32* @X86_FEATURE_VNMI, align 4
  %48 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, -2147483648
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  %54 = load i32, i32* @MSR_IA32_VMX_PROCBASED_CTLS2, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @rdmsr(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 2097152
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %70 = load i32, i32* @X86_FEATURE_FLEXPRIORITY, align 4
  %71 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64, %53
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %78 = load i32, i32* @X86_FEATURE_EPT, align 4
  %79 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %77, i32 %78)
  %80 = load i32, i32* @MSR_IA32_VMX_EPT_VPID_CAP, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @rdmsr(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 2097152
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %89 = load i32, i32* @X86_FEATURE_EPT_AD, align 4
  %90 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %76
  br label %92

92:                                               ; preds = %91, %72
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %98 = load i32, i32* @X86_FEATURE_VPID, align 4
  %99 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %49
  ret void
}

declare dso_local i32 @clear_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
