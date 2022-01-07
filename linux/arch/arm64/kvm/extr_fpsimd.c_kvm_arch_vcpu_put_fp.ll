; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_fpsimd.c_kvm_arch_vcpu_put_fp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_fpsimd.c_kvm_arch_vcpu_put_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@KVM_ARM64_FP_ENABLED = common dso_local global i32 0, align 4
@ZCR_EL1 = common dso_local global i64 0, align 8
@SYS_ZCR_EL12 = common dso_local global i32 0, align 4
@KVM_ARM64_HOST_SVE_ENABLED = common dso_local global i32 0, align 4
@CPACR_EL1 = common dso_local global i32 0, align 4
@CPACR_EL1_ZEN_EL0EN = common dso_local global i32 0, align 4
@TIF_SVE = common dso_local global i32 0, align 4
@KVM_ARM64_HOST_SVE_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_vcpu_put_fp(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = call i32 (...) @system_supports_sve()
  store i32 %7, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call i32 @vcpu_has_sve(%struct.kvm_vcpu* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @KVM_ARM64_FP_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @ZCR_EL1, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %6, align 8
  %27 = call i32 (...) @fpsimd_save_and_flush_cpu_state()
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @SYS_ZCR_EL12, align 4
  %32 = call i32 @read_sysreg_s(i32 %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %19
  br label %56

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @KVM_ARM64_HOST_SVE_ENABLED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @CPACR_EL1, align 4
  %48 = load i32, i32* @CPACR_EL1_ZEN_EL0EN, align 4
  %49 = call i32 @sysreg_clear_set(i32 %47, i32 0, i32 %48)
  br label %54

50:                                               ; preds = %38
  %51 = load i32, i32* @CPACR_EL1, align 4
  %52 = load i32, i32* @CPACR_EL1_ZEN_EL0EN, align 4
  %53 = call i32 @sysreg_clear_set(i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* @TIF_SVE, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @KVM_ARM64_HOST_SVE_IN_USE, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @update_thread_flag(i32 %57, i32 %63)
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @local_irq_restore(i64 %65)
  ret void
}

declare dso_local i32 @system_supports_sve(...) #1

declare dso_local i32 @vcpu_has_sve(%struct.kvm_vcpu*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @fpsimd_save_and_flush_cpu_state(...) #1

declare dso_local i32 @read_sysreg_s(i32) #1

declare dso_local i32 @sysreg_clear_set(i32, i32, i32) #1

declare dso_local i32 @update_thread_flag(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
