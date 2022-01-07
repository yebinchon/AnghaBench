; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_disable_nmi_singlestep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_disable_nmi_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@X86_EFLAGS_RF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*)* @disable_nmi_singlestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_nmi_singlestep(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %3 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %4 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %1
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @X86_EFLAGS_TF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @X86_EFLAGS_TF, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %23 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %21
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %19, %12
  %30 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %31 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @X86_EFLAGS_RF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @X86_EFLAGS_RF, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %40 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %38
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %36, %29
  br label %47

47:                                               ; preds = %46, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
