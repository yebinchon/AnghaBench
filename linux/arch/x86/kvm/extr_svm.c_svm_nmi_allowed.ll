; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_nmi_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_nmi_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { %struct.TYPE_6__, %struct.vmcb* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vmcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SVM_INTERRUPT_SHADOW_MASK = common dso_local global i32 0, align 4
@HF_NMI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @svm_nmi_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_nmi_allowed(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.vmcb*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %6)
  store %struct.vcpu_svm* %7, %struct.vcpu_svm** %3, align 8
  %8 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %9 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %8, i32 0, i32 1
  %10 = load %struct.vmcb*, %struct.vmcb** %9, align 8
  store %struct.vmcb* %10, %struct.vmcb** %4, align 8
  %11 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %12 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SVM_INTERRUPT_SHADOW_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %20 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HF_NMI_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %18, %1
  %29 = phi i1 [ false, %1 ], [ %27, %18 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %35 = call i64 @gif_set(%struct.vcpu_svm* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %39 = call i64 @nested_svm_nmi(%struct.vcpu_svm* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %33, %28
  %42 = phi i1 [ false, %33 ], [ false, %28 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i64 @gif_set(%struct.vcpu_svm*) #1

declare dso_local i64 @nested_svm_nmi(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
