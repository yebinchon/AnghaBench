; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_valid_ept_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_valid_ept_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VMX_EPTP_MT_MASK = common dso_local global i32 0, align 4
@VMX_EPTP_UC_BIT = common dso_local global i32 0, align 4
@VMX_EPTP_WB_BIT = common dso_local global i32 0, align 4
@VMX_EPTP_PWL_MASK = common dso_local global i32 0, align 4
@VMX_EPTP_PWL_4 = common dso_local global i32 0, align 4
@VMX_EPTP_AD_ENABLE_BIT = common dso_local global i32 0, align 4
@VMX_EPT_AD_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @valid_ept_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_ept_address(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_vmx*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %8)
  store %struct.vcpu_vmx* %9, %struct.vcpu_vmx** %6, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call i32 @cpuid_maxphyaddr(%struct.kvm_vcpu* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VMX_EPTP_MT_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %45 [
    i32 129, label %15
    i32 128, label %30
  ]

15:                                               ; preds = %2
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %17 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VMX_EPTP_UC_BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @CC(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %93

29:                                               ; preds = %15
  br label %46

30:                                               ; preds = %2
  %31 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %32 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VMX_EPTP_WB_BIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @CC(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %93

44:                                               ; preds = %30
  br label %46

45:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

46:                                               ; preds = %44, %29
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @VMX_EPTP_PWL_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @VMX_EPTP_PWL_4, align 4
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @CC(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %93

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = ashr i32 %62, 7
  %64 = and i32 %63, 31
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ true, %56 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 @CC(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %93

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @VMX_EPTP_AD_ENABLE_BIT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %79 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VMX_EPT_AD_BIT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i64 @CC(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %93

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %72
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %90, %71, %55, %45, %43, %28
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @cpuid_maxphyaddr(%struct.kvm_vcpu*) #1

declare dso_local i64 @CC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
