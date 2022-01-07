; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_own_fpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_own_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@cpu_has_msa = common dso_local global i64 0, align 8
@ST0_CU1 = common dso_local global i32 0, align 4
@ST0_FR = common dso_local global i32 0, align 4
@KVM_MIPS_AUX_MSA = common dso_local global i32 0, align 4
@cpu_has_fre = common dso_local global i64 0, align 8
@MIPS_CONF5_FRE = common dso_local global i32 0, align 4
@KVM_MIPS_AUX_FPU = common dso_local global i32 0, align 4
@KVM_TRACE_AUX_RESTORE = common dso_local global i32 0, align 4
@KVM_TRACE_AUX_FPU = common dso_local global i32 0, align 4
@KVM_TRACE_AUX_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_own_fpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.mips_coproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  store %struct.mips_coproc* %9, %struct.mips_coproc** %3, align 8
  %10 = call i32 (...) @preempt_disable()
  %11 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %12 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i64, i64* @cpu_has_msa, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ST0_CU1, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ST0_FR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @KVM_MIPS_AUX_MSA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %35 = call i32 @kvm_lose_fpu(%struct.kvm_vcpu* %34)
  br label %36

36:                                               ; preds = %33, %25, %20, %15, %1
  %37 = load i32, i32* @ST0_CU1, align 4
  %38 = load i32, i32* @ST0_FR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @change_c0_status(i32 %39, i32 %40)
  %42 = load i64, i64* @cpu_has_fre, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %46 = call i32 @kvm_read_c0_guest_config5(%struct.mips_coproc* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @MIPS_CONF5_FRE, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @change_c0_config5(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %36
  %51 = call i32 (...) @enable_fpu_hazard()
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %50
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = call i32 @__kvm_restore_fpu(%struct.TYPE_2__* %61)
  %63 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 8
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %70 = load i32, i32* @KVM_TRACE_AUX_RESTORE, align 4
  %71 = load i32, i32* @KVM_TRACE_AUX_FPU, align 4
  %72 = call i32 @trace_kvm_aux(%struct.kvm_vcpu* %69, i32 %70, i32 %71)
  br label %78

73:                                               ; preds = %50
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %75 = load i32, i32* @KVM_TRACE_AUX_ENABLE, align 4
  %76 = load i32, i32* @KVM_TRACE_AUX_FPU, align 4
  %77 = call i32 @trace_kvm_aux(%struct.kvm_vcpu* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %59
  %79 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_lose_fpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @change_c0_status(i32, i32) #1

declare dso_local i32 @kvm_read_c0_guest_config5(%struct.mips_coproc*) #1

declare dso_local i32 @change_c0_config5(i32, i32) #1

declare dso_local i32 @enable_fpu_hazard(...) #1

declare dso_local i32 @__kvm_restore_fpu(%struct.TYPE_2__*) #1

declare dso_local i32 @trace_kvm_aux(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
