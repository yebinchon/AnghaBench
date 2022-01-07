; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmu_set_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmu_set_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.msr_data = type { i32, i32, i32 }
%struct.kvm_pmu = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_pmc = type { i32, i32 }

@MSR_IA32_PERFCTR0 = common dso_local global i32 0, align 4
@MSR_P6_EVNTSEL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.msr_data*)* @intel_pmu_set_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmu_set_msr(%struct.kvm_vcpu* %0, %struct.msr_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.msr_data*, align 8
  %6 = alloca %struct.kvm_pmu*, align 8
  %7 = alloca %struct.kvm_pmc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.msr_data* %1, %struct.msr_data** %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %10)
  store %struct.kvm_pmu* %11, %struct.kvm_pmu** %6, align 8
  %12 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %13 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %16 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %89 [
    i32 131, label %19
    i32 128, label %36
    i32 130, label %46
    i32 129, label %65
  ]

19:                                               ; preds = %2
  %20 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %147

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, -3004
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @reprogram_fixed_counters(%struct.kvm_pmu* %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %147

35:                                               ; preds = %26
  br label %146

36:                                               ; preds = %2
  %37 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %38 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %44 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %147

45:                                               ; preds = %36
  br label %146

46:                                               ; preds = %2
  %47 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %48 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %147

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %56 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @global_ctrl_changed(%struct.kvm_pmu* %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %147

64:                                               ; preds = %53
  br label %146

65:                                               ; preds = %2
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %68 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %65
  %73 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %74 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %81 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %87 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %3, align 4
  br label %147

88:                                               ; preds = %65
  br label %146

89:                                               ; preds = %2
  %90 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @MSR_IA32_PERFCTR0, align 4
  %93 = call %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu* %90, i32 %91, i32 %92)
  store %struct.kvm_pmc* %93, %struct.kvm_pmc** %7, align 8
  %94 = icmp ne %struct.kvm_pmc* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %97 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %103 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %108

104:                                              ; preds = %95
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %107 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %100
  store i32 0, i32* %3, align 4
  br label %147

109:                                              ; preds = %89
  %110 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu* %110, i32 %111)
  store %struct.kvm_pmc* %112, %struct.kvm_pmc** %7, align 8
  %113 = icmp ne %struct.kvm_pmc* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %117 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  store i32 0, i32* %3, align 4
  br label %147

118:                                              ; preds = %109
  %119 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @MSR_P6_EVNTSEL0, align 4
  %122 = call %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu* %119, i32 %120, i32 %121)
  store %struct.kvm_pmc* %122, %struct.kvm_pmc** %7, align 8
  %123 = icmp ne %struct.kvm_pmc* %122, null
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %127 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %147

131:                                              ; preds = %124
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %134 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %132, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @reprogram_gp_counter(%struct.kvm_pmc* %139, i32 %140)
  store i32 0, i32* %3, align 4
  br label %147

142:                                              ; preds = %131
  br label %143

143:                                              ; preds = %142, %118
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %88, %64, %45, %35
  store i32 1, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %138, %130, %114, %108, %84, %60, %52, %41, %31, %25
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

declare dso_local i32 @reprogram_fixed_counters(%struct.kvm_pmu*, i32) #1

declare dso_local i32 @global_ctrl_changed(%struct.kvm_pmu*, i32) #1

declare dso_local %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu*, i32, i32) #1

declare dso_local %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu*, i32) #1

declare dso_local i32 @reprogram_gp_counter(%struct.kvm_pmc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
