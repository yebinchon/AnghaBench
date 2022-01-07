; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_mpstate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_mpstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_mp_state = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_MP_STATE_RUNNABLE = common dso_local global i64 0, align 8
@KVM_MP_STATE_SIPI_RECEIVED = common dso_local global i64 0, align 8
@KVM_MP_STATE_INIT_RECEIVED = common dso_local global i64 0, align 8
@KVM_APIC_SIPI = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_mpstate(%struct.kvm_vcpu* %0, %struct.kvm_mp_state* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_mp_state*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_mp_state* %1, %struct.kvm_mp_state** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i32 @vcpu_load(%struct.kvm_vcpu* %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call i32 @lapic_in_kernel(%struct.kvm_vcpu* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.kvm_mp_state*, %struct.kvm_mp_state** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_mp_state, %struct.kvm_mp_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KVM_MP_STATE_RUNNABLE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %72

20:                                               ; preds = %13, %2
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i64 @is_smm(%struct.kvm_vcpu* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24, %20
  %31 = load %struct.kvm_mp_state*, %struct.kvm_mp_state** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_mp_state, %struct.kvm_mp_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @KVM_MP_STATE_SIPI_RECEIVED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.kvm_mp_state*, %struct.kvm_mp_state** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_mp_state, %struct.kvm_mp_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @KVM_MP_STATE_INIT_RECEIVED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30
  br label %72

43:                                               ; preds = %36, %24
  %44 = load %struct.kvm_mp_state*, %struct.kvm_mp_state** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_mp_state, %struct.kvm_mp_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KVM_MP_STATE_SIPI_RECEIVED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i64, i64* @KVM_MP_STATE_INIT_RECEIVED, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load i32, i32* @KVM_APIC_SIPI, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %54, i32* %59)
  br label %68

61:                                               ; preds = %43
  %62 = load %struct.kvm_mp_state*, %struct.kvm_mp_state** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_mp_state, %struct.kvm_mp_state* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %49
  %69 = load i32, i32* @KVM_REQ_EVENT, align 4
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %71 = call i32 @kvm_make_request(i32 %69, %struct.kvm_vcpu* %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %42, %19
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = call i32 @vcpu_put(%struct.kvm_vcpu* %73)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_smm(%struct.kvm_vcpu*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
