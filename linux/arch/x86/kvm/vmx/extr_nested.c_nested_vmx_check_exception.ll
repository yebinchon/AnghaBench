; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.vmcs12 = type { i32 }

@PF_VECTOR = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@DR6_FIXED_1 = common dso_local global i64 0, align 8
@DR6_BT = common dso_local global i64 0, align 8
@DR6_RTM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64*)* @nested_vmx_check_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_check_exception(%struct.kvm_vcpu* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.vmcs12*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %10)
  store %struct.vmcs12* %11, %struct.vmcs12** %6, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PF_VECTOR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %2
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  store i32 1, i32* %3, align 4
  br label %104

44:                                               ; preds = %30
  %45 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @nested_vmx_is_page_fault_vmexit(%struct.vmcs12* %45, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  br label %63

58:                                               ; preds = %53
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi i64 [ %57, %56 ], [ %62, %58 ]
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  store i32 1, i32* %3, align 4
  br label %104

66:                                               ; preds = %44
  br label %103

67:                                               ; preds = %2
  %68 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %69 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @DB_VECTOR, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %79
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* @DR6_FIXED_1, align 8
  %88 = load i64, i64* @DR6_BT, align 8
  %89 = or i64 %87, %88
  %90 = xor i64 %89, -1
  %91 = load i64, i64* %9, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* @DR6_RTM, align 8
  %94 = load i64, i64* %9, align 8
  %95 = xor i64 %94, %93
  store i64 %95, i64* %9, align 8
  br label %96

96:                                               ; preds = %82, %79
  %97 = load i64, i64* %9, align 8
  %98 = load i64*, i64** %5, align 8
  store i64 %97, i64* %98, align 8
  br label %101

99:                                               ; preds = %75
  %100 = load i64*, i64** %5, align 8
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %99, %96
  store i32 1, i32* %3, align 4
  br label %104

102:                                              ; preds = %67
  br label %103

103:                                              ; preds = %102, %66
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %101, %63, %37
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_vmx_is_page_fault_vmexit(%struct.vmcs12*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
