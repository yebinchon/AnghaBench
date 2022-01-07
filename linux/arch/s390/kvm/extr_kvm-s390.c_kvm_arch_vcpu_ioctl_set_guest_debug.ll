; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_ioctl_set_guest_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_ioctl_set_guest_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.kvm_guest_debug = type { i32 }

@VALID_GUESTDBG_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sclp = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@KVM_GUESTDBG_ENABLE = common dso_local global i32 0, align 4
@CPUSTAT_P = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_guest_debug(%struct.kvm_vcpu* %0, %struct.kvm_guest_debug* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_guest_debug*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_guest_debug* %1, %struct.kvm_guest_debug** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i32 @vcpu_load(%struct.kvm_vcpu* %6)
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call i32 @kvm_s390_clear_bp_data(%struct.kvm_vcpu* %10)
  %12 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VALID_GUESTDBG_FLAGS, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sclp, i32 0, i32 0), align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %75

28:                                               ; preds = %22
  %29 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KVM_GUESTDBG_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = load i32, i32* @CPUSTAT_P, align 4
  %43 = call i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu* %41, i32 %42)
  %44 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %53 = call i32 @kvm_s390_import_bp_data(%struct.kvm_vcpu* %51, %struct.kvm_guest_debug* %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %35
  br label %63

55:                                               ; preds = %28
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = load i32, i32* @CPUSTAT_P, align 4
  %58 = call i32 @kvm_s390_clear_cpuflags(%struct.kvm_vcpu* %56, i32 %57)
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %55, %54
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = call i32 @kvm_s390_clear_bp_data(%struct.kvm_vcpu* %69)
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = load i32, i32* @CPUSTAT_P, align 4
  %73 = call i32 @kvm_s390_clear_cpuflags(%struct.kvm_vcpu* %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %63
  br label %75

75:                                               ; preds = %74, %25, %19
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = call i32 @vcpu_put(%struct.kvm_vcpu* %76)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_clear_bp_data(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_import_bp_data(%struct.kvm_vcpu*, %struct.kvm_guest_debug*) #1

declare dso_local i32 @kvm_s390_clear_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
