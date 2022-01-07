; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_clr_exception_intercept.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_clr_exception_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32 }
%struct.vmcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*, i32)* @clr_exception_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clr_exception_intercept(%struct.vcpu_svm* %0, i32 %1) #0 {
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmcb*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %7 = call %struct.vmcb* @get_host_vmcb(%struct.vcpu_svm* %6)
  store %struct.vmcb* %7, %struct.vmcb** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 1, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %12 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %10
  store i32 %15, i32* %13, align 4
  %16 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %17 = call i32 @recalc_intercepts(%struct.vcpu_svm* %16)
  ret void
}

declare dso_local %struct.vmcb* @get_host_vmcb(%struct.vcpu_svm*) #1

declare dso_local i32 @recalc_intercepts(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
