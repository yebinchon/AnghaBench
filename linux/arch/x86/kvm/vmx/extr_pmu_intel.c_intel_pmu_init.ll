; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.kvm_vcpu*, i32 }
%struct.TYPE_3__ = type { i32, %struct.kvm_vcpu*, i32 }

@INTEL_PMC_MAX_GENERIC = common dso_local global i32 0, align 4
@KVM_PMC_GP = common dso_local global i32 0, align 4
@INTEL_PMC_MAX_FIXED = common dso_local global i32 0, align 4
@KVM_PMC_FIXED = common dso_local global i32 0, align 4
@INTEL_PMC_IDX_FIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @intel_pmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_pmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %5)
  store %struct.kvm_pmu* %6, %struct.kvm_pmu** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @INTEL_PMC_MAX_GENERIC, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load i32, i32* @KVM_PMC_GP, align 4
  %13 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 %12, i32* %19, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store %struct.kvm_vcpu* %20, %struct.kvm_vcpu** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 8
  br label %36

36:                                               ; preds = %11
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %7

39:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %72, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @INTEL_PMC_MAX_FIXED, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = load i32, i32* @KVM_PMC_FIXED, align 4
  %46 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %45, i32* %52, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %54 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store %struct.kvm_vcpu* %53, %struct.kvm_vcpu** %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @INTEL_PMC_IDX_FIXED, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i64 %64, i64* %71, align 8
  br label %72

72:                                               ; preds = %44
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %40

75:                                               ; preds = %40
  ret void
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
