; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_kvm_arm_vcpu_arch_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_kvm_arm_vcpu_arch_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_device_attr = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arm_vcpu_arch_get_attr(%struct.kvm_vcpu* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_device_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %4, align 8
  %6 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %2
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %12 = call i32 @kvm_arm_pmu_v3_get_attr(%struct.kvm_vcpu* %10, %struct.kvm_device_attr* %11)
  store i32 %12, i32* %5, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %16 = call i32 @kvm_arm_timer_get_attr(%struct.kvm_vcpu* %14, %struct.kvm_device_attr* %15)
  store i32 %16, i32* %5, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %13, %9
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @kvm_arm_pmu_v3_get_attr(%struct.kvm_vcpu*, %struct.kvm_device_attr*) #1

declare dso_local i32 @kvm_arm_timer_get_attr(%struct.kvm_vcpu*, %struct.kvm_device_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
