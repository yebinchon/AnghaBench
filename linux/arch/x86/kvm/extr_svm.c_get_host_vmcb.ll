; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_get_host_vmcb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_get_host_vmcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcb = type { i32 }
%struct.vcpu_svm = type { %struct.vmcb*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.vmcb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmcb* (%struct.vcpu_svm*)* @get_host_vmcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmcb* @get_host_vmcb(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vmcb*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %4 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %5 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %4, i32 0, i32 2
  %6 = call i64 @is_guest_mode(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %10 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.vmcb*, %struct.vmcb** %11, align 8
  store %struct.vmcb* %12, %struct.vmcb** %2, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 0
  %16 = load %struct.vmcb*, %struct.vmcb** %15, align 8
  store %struct.vmcb* %16, %struct.vmcb** %2, align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.vmcb*, %struct.vmcb** %2, align 8
  ret %struct.vmcb* %18
}

declare dso_local i64 @is_guest_mode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
