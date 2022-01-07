; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_update_cr0_intercept.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_update_cr0_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SVM_CR0_SELECTIVE_MASK = common dso_local global i32 0, align 4
@VMCB_CR = common dso_local global i32 0, align 4
@INTERCEPT_CR0_READ = common dso_local global i32 0, align 4
@INTERCEPT_CR0_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*)* @update_cr0_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cr0_intercept(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SVM_CR0_SELECTIVE_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SVM_CR0_SELECTIVE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %26 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i32, i32* @VMCB_CR, align 4
  %29 = call i32 @mark_dirty(%struct.TYPE_8__* %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %36 = load i32, i32* @INTERCEPT_CR0_READ, align 4
  %37 = call i32 @clr_cr_intercept(%struct.vcpu_svm* %35, i32 %36)
  %38 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %39 = load i32, i32* @INTERCEPT_CR0_WRITE, align 4
  %40 = call i32 @clr_cr_intercept(%struct.vcpu_svm* %38, i32 %39)
  br label %48

41:                                               ; preds = %1
  %42 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %43 = load i32, i32* @INTERCEPT_CR0_READ, align 4
  %44 = call i32 @set_cr_intercept(%struct.vcpu_svm* %42, i32 %43)
  %45 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %46 = load i32, i32* @INTERCEPT_CR0_WRITE, align 4
  %47 = call i32 @set_cr_intercept(%struct.vcpu_svm* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @mark_dirty(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @clr_cr_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @set_cr_intercept(%struct.vcpu_svm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
