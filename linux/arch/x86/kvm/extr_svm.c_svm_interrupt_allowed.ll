; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_interrupt_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_interrupt_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { %struct.TYPE_6__, %struct.vmcb* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vmcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SVM_INTERRUPT_SHADOW_MASK = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@HF_VINTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @svm_interrupt_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_interrupt_allowed(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_svm*, align 8
  %5 = alloca %struct.vmcb*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %7)
  store %struct.vcpu_svm* %8, %struct.vcpu_svm** %4, align 8
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %4, align 8
  %10 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %9, i32 0, i32 1
  %11 = load %struct.vmcb*, %struct.vmcb** %10, align 8
  store %struct.vmcb* %11, %struct.vmcb** %5, align 8
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %4, align 8
  %13 = call i32 @gif_set(%struct.vcpu_svm* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %17 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SVM_INTERRUPT_SHADOW_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %54

24:                                               ; preds = %15
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call i32 @kvm_get_rflags(%struct.kvm_vcpu* %25)
  %27 = load i32, i32* @X86_EFLAGS_IF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = call i64 @is_guest_mode(%struct.kvm_vcpu* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.vcpu_svm*, %struct.vcpu_svm** %4, align 8
  %41 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HF_VINTR_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %39, %36
  %50 = phi i1 [ false, %36 ], [ %48, %39 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %24
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %49, %23
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @gif_set(%struct.vcpu_svm*) #1

declare dso_local i32 @kvm_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_guest_mode(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
