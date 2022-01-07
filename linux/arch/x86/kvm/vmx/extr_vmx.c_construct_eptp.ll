; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_construct_eptp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_construct_eptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@VMX_EPTP_MT_WB = common dso_local global i64 0, align 8
@VMX_EPTP_PWL_5 = common dso_local global i64 0, align 8
@VMX_EPTP_PWL_4 = common dso_local global i64 0, align 8
@enable_ept_ad_bits = common dso_local global i64 0, align 8
@VMX_EPTP_AD_ENABLE_BIT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @construct_eptp(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @VMX_EPTP_MT_WB, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call i32 @get_ept_level(%struct.kvm_vcpu* %7)
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @VMX_EPTP_PWL_5, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @VMX_EPTP_PWL_4, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = load i64, i64* %5, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* @enable_ept_ad_bits, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @is_guest_mode(%struct.kvm_vcpu* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call i64 @nested_ept_ad_enabled(%struct.kvm_vcpu* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %20
  %29 = load i64, i64* @VMX_EPTP_AD_ENABLE_BIT, align 8
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %28, %24, %14
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @PAGE_MASK, align 8
  %35 = and i64 %33, %34
  %36 = load i64, i64* %5, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local i32 @get_ept_level(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_ept_ad_enabled(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
