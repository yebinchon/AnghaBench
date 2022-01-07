; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_set_nmi_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_set_nmi_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HF_NMI_MASK = common dso_local global i32 0, align 4
@INTERCEPT_IRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @svm_set_nmi_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_set_nmi_mask(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu_svm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %6)
  store %struct.vcpu_svm* %7, %struct.vcpu_svm** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32, i32* @HF_NMI_MASK, align 4
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %13 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %19 = load i32, i32* @INTERCEPT_IRET, align 4
  %20 = call i32 @set_intercept(%struct.vcpu_svm* %18, i32 %19)
  br label %33

21:                                               ; preds = %2
  %22 = load i32, i32* @HF_NMI_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %25 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %23
  store i32 %29, i32* %27, align 4
  %30 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %31 = load i32, i32* @INTERCEPT_IRET, align 4
  %32 = call i32 @clr_intercept(%struct.vcpu_svm* %30, i32 %31)
  br label %33

33:                                               ; preds = %21, %10
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @set_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @clr_intercept(%struct.vcpu_svm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
