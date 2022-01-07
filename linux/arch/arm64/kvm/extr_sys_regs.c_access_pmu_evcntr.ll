; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_pmu_evcntr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_pmu_evcntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32, i64 }
%struct.sys_reg_desc = type { i32, i32, i32 }

@PMSELR_EL0 = common dso_local global i32 0, align 4
@ARMV8_PMU_COUNTER_MASK = common dso_local global i32 0, align 4
@ARMV8_PMU_CYCLE_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @access_pmu_evcntr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_pmu_evcntr(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.sys_reg_params*, align 8
  %7 = alloca %struct.sys_reg_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %6, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %7, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = call i32 @kvm_arm_pmu_v3_ready(%struct.kvm_vcpu* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %15 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %16 = call i32 @trap_raz_wi(%struct.kvm_vcpu* %13, %struct.sys_reg_params* %14, %struct.sys_reg_desc* %15)
  store i32 %16, i32* %4, align 4
  br label %135

17:                                               ; preds = %3
  %18 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %19 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %24 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 13
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  %28 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %29 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %34 = call i64 @pmu_access_event_counter_el0_disabled(%struct.kvm_vcpu* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %135

37:                                               ; preds = %32
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %39 = load i32, i32* @PMSELR_EL0, align 4
  %40 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %38, i32 %39)
  %41 = load i32, i32* @ARMV8_PMU_COUNTER_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %8, align 4
  br label %57

43:                                               ; preds = %27
  %44 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %45 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %50 = call i64 @pmu_access_cycle_counter_el0_disabled(%struct.kvm_vcpu* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %135

53:                                               ; preds = %48
  %54 = load i32, i32* @ARMV8_PMU_CYCLE_IDX, align 4
  store i32 %54, i32* %8, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %135

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %37
  br label %105

58:                                               ; preds = %22, %17
  %59 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %60 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %65 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 9
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %70 = call i64 @pmu_access_event_counter_el0_disabled(%struct.kvm_vcpu* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %135

73:                                               ; preds = %68
  %74 = load i32, i32* @ARMV8_PMU_CYCLE_IDX, align 4
  store i32 %74, i32* %8, align 4
  br label %104

75:                                               ; preds = %63, %58
  %76 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %77 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 14
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %82 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 12
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %88 = call i64 @pmu_access_event_counter_el0_disabled(%struct.kvm_vcpu* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %135

91:                                               ; preds = %86
  %92 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %93 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 3
  %96 = shl i32 %95, 3
  %97 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %98 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 7
  %101 = or i32 %96, %100
  store i32 %101, i32* %8, align 4
  br label %103

102:                                              ; preds = %80, %75
  store i32 0, i32* %4, align 4
  br label %135

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %57
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @pmu_counter_idx_valid(%struct.kvm_vcpu* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %135

111:                                              ; preds = %105
  %112 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %113 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %118 = call i64 @pmu_access_el0_disabled(%struct.kvm_vcpu* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %135

121:                                              ; preds = %116
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %125 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @kvm_pmu_set_counter_value(%struct.kvm_vcpu* %122, i32 %123, i32 %126)
  br label %134

128:                                              ; preds = %111
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @kvm_pmu_get_counter_value(%struct.kvm_vcpu* %129, i32 %130)
  %132 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %133 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %128, %121
  store i32 1, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %120, %110, %102, %90, %72, %55, %52, %36, %12
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @kvm_arm_pmu_v3_ready(%struct.kvm_vcpu*) #1

declare dso_local i32 @trap_raz_wi(%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*) #1

declare dso_local i64 @pmu_access_event_counter_el0_disabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @__vcpu_sys_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @pmu_access_cycle_counter_el0_disabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @pmu_counter_idx_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @pmu_access_el0_disabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_pmu_set_counter_value(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_pmu_get_counter_value(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
