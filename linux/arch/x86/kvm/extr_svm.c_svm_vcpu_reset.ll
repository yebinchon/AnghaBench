; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_vcpu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_vcpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vcpu_svm = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@APIC_DEFAULT_PHYS_BASE = common dso_local global i32 0, align 4
@MSR_IA32_APICBASE_ENABLE = common dso_local global i32 0, align 4
@MSR_IA32_APICBASE_BSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @svm_vcpu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_vcpu_reset(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu_svm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %8)
  store %struct.vcpu_svm* %9, %struct.vcpu_svm** %5, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 16777317, i32* %12, align 4
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %16 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %21 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %24 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %28 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %27, i32 0, i32 0
  %29 = call i64 @kvm_vcpu_is_reset_bsp(%struct.TYPE_6__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load i32, i32* @MSR_IA32_APICBASE_BSP, align 4
  %33 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %34 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %31, %19
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %42 = call i32 @init_vmcb(%struct.vcpu_svm* %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i32 @kvm_cpuid(%struct.kvm_vcpu* %43, i32* %7, i32* %6, i32* %6, i32* %6, i32 1)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @kvm_rdx_write(%struct.kvm_vcpu* %45, i32 %46)
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call i64 @kvm_vcpu_apicv_active(%struct.kvm_vcpu* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %56 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %57 = call i32 @avic_update_vapic_bar(%struct.vcpu_svm* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %51, %40
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_is_reset_bsp(%struct.TYPE_6__*) #1

declare dso_local i32 @init_vmcb(%struct.vcpu_svm*) #1

declare dso_local i32 @kvm_cpuid(%struct.kvm_vcpu*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @kvm_rdx_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_vcpu_apicv_active(%struct.kvm_vcpu*) #1

declare dso_local i32 @avic_update_vapic_bar(%struct.vcpu_svm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
