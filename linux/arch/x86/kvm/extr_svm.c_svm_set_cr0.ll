; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_set_cr0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_set_cr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.vcpu_svm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@npt_enabled = common dso_local global i32 0, align 4
@X86_CR0_PG = common dso_local global i64 0, align 8
@X86_CR0_WP = common dso_local global i64 0, align 8
@KVM_X86_QUIRK_CD_NW_CLEARED = common dso_local global i32 0, align 4
@X86_CR0_CD = common dso_local global i64 0, align 8
@X86_CR0_NW = common dso_local global i64 0, align 8
@VMCB_CR = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64)* @svm_set_cr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_set_cr0(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vcpu_svm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %6)
  store %struct.vcpu_svm* %7, %struct.vcpu_svm** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i64 %8, i64* %11, align 8
  %12 = load i32, i32* @npt_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @X86_CR0_PG, align 8
  %16 = load i64, i64* @X86_CR0_WP, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* %4, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @KVM_X86_QUIRK_CD_NW_CLEARED, align 4
  %25 = call i64 @kvm_check_has_quirk(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i64, i64* @X86_CR0_CD, align 8
  %29 = load i64, i64* @X86_CR0_NW, align 8
  %30 = or i64 %28, %29
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %4, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %37 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 %35, i64* %40, align 8
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %42 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* @VMCB_CR, align 4
  %45 = call i32 @mark_dirty(%struct.TYPE_6__* %43, i32 %44)
  %46 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %47 = call i32 @update_cr0_intercept(%struct.vcpu_svm* %46)
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_check_has_quirk(i32, i32) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @update_cr0_intercept(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
