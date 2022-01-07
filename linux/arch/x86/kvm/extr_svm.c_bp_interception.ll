; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_bp_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_bp_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { %struct.kvm_run* }
%struct.kvm_run = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@KVM_EXIT_DEBUG = common dso_local global i32 0, align 4
@BP_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @bp_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bp_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca %struct.kvm_run*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %4 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %5 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  store %struct.kvm_run* %7, %struct.kvm_run** %3, align 8
  %8 = load i32, i32* @KVM_EXIT_DEBUG, align 4
  %9 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %12 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %19 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %17, %23
  %25 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i64 %24, i64* %28, align 8
  %29 = load i32, i32* @BP_VECTOR, align 4
  %30 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
