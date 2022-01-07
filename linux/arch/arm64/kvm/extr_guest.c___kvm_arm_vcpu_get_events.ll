; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c___kvm_arm_vcpu_get_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c___kvm_arm_vcpu_get_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_vcpu_events = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@HCR_VSE = common dso_local global i32 0, align 4
@ARM64_HAS_RAS_EXTN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kvm_arm_vcpu_get_events(%struct.kvm_vcpu* %0, %struct.kvm_vcpu_events* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_vcpu_events*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_vcpu_events* %1, %struct.kvm_vcpu_events** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HCR_VSE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @ARM64_HAS_RAS_EXTN, align 4
  %19 = call i64 @cpus_have_const_cap(i32 %18)
  %20 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i64 %19, i64* %22, align 8
  %23 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i32 @vcpu_get_vsesr(%struct.kvm_vcpu* %35)
  %37 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %28, %2
  ret i32 0
}

declare dso_local i64 @cpus_have_const_cap(i32) #1

declare dso_local i32 @vcpu_get_vsesr(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
