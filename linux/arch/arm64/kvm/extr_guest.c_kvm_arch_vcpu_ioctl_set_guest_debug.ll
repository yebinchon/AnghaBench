; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_kvm_arch_vcpu_ioctl_set_guest_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_kvm_arch_vcpu_ioctl_set_guest_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_guest_debug = type { i32, i32 }

@KVM_GUESTDBG_VALID_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_GUESTDBG_ENABLE = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_guest_debug(%struct.kvm_vcpu* %0, %struct.kvm_guest_debug* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_guest_debug*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_guest_debug* %1, %struct.kvm_guest_debug** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @trace_kvm_set_guest_debug(%struct.kvm_vcpu* %6, i32 %9)
  %11 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @KVM_GUESTDBG_VALID_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KVM_GUESTDBG_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KVM_GUESTDBG_USE_HW, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %28
  br label %51

48:                                               ; preds = %21
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %47
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @trace_kvm_set_guest_debug(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
