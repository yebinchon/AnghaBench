; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c___kvm_arm_vcpu_set_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c___kvm_arm_vcpu_set_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_vcpu_events = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ARM64_HAS_RAS_EXTN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESR_ELx_ISS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kvm_arm_vcpu_set_events(%struct.kvm_vcpu* %0, %struct.kvm_vcpu_events* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_vcpu_events*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_vcpu_events* %1, %struct.kvm_vcpu_events** %5, align 8
  %8 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i32, i32* @ARM64_HAS_RAS_EXTN, align 4
  %23 = call i32 @cpus_have_const_cap(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %21
  %29 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ESR_ELx_ISS_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kvm_set_sei_esr(%struct.kvm_vcpu* %38, i32 %42)
  br label %47

44:                                               ; preds = %28
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %37
  br label %55

48:                                               ; preds = %18, %2
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %53 = call i32 @kvm_inject_vabt(%struct.kvm_vcpu* %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %47
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %44, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @cpus_have_const_cap(i32) #1

declare dso_local i32 @kvm_set_sei_esr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_inject_vabt(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
