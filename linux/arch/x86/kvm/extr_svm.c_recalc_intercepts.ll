; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_recalc_intercepts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_recalc_intercepts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.nested_state, %struct.TYPE_4__*, i32 }
%struct.nested_state = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vmcb_control_area }
%struct.vmcb_control_area = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.vmcb_control_area }

@VMCB_INTERCEPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*)* @recalc_intercepts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recalc_intercepts(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca %struct.vmcb_control_area*, align 8
  %4 = alloca %struct.vmcb_control_area*, align 8
  %5 = alloca %struct.nested_state*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %6 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %7 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load i32, i32* @VMCB_INTERCEPTS, align 4
  %10 = call i32 @mark_dirty(%struct.TYPE_4__* %8, i32 %9)
  %11 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %12 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %11, i32 0, i32 2
  %13 = call i32 @is_guest_mode(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %64

16:                                               ; preds = %1
  %17 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %18 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.vmcb_control_area* %20, %struct.vmcb_control_area** %3, align 8
  %21 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %22 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.nested_state, %struct.nested_state* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.vmcb_control_area* %25, %struct.vmcb_control_area** %4, align 8
  %26 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %27 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %26, i32 0, i32 0
  store %struct.nested_state* %27, %struct.nested_state** %5, align 8
  %28 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %29 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nested_state*, %struct.nested_state** %5, align 8
  %32 = getelementptr inbounds %struct.nested_state, %struct.nested_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %30, %33
  %35 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %36 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %38 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nested_state*, %struct.nested_state** %5, align 8
  %41 = getelementptr inbounds %struct.nested_state, %struct.nested_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  %44 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %45 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %47 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nested_state*, %struct.nested_state** %5, align 8
  %50 = getelementptr inbounds %struct.nested_state, %struct.nested_state* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %48, %51
  %53 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %54 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %56 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nested_state*, %struct.nested_state** %5, align 8
  %59 = getelementptr inbounds %struct.nested_state, %struct.nested_state* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  %62 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %63 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @mark_dirty(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @is_guest_mode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
