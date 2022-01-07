; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_lose_fpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_lose_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cpu_has_msa = common dso_local global i64 0, align 8
@KVM_MIPS_AUX_MSA = common dso_local global i32 0, align 4
@CONFIG_KVM_MIPS_VZ = common dso_local global i32 0, align 4
@MIPS_CONF5_MSAEN = common dso_local global i32 0, align 4
@KVM_TRACE_AUX_SAVE = common dso_local global i32 0, align 4
@KVM_TRACE_AUX_FPU_MSA = common dso_local global i32 0, align 4
@KVM_MIPS_AUX_FPU = common dso_local global i32 0, align 4
@ST0_CU1 = common dso_local global i32 0, align 4
@ST0_FR = common dso_local global i32 0, align 4
@KVM_TRACE_AUX_FPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_lose_fpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = call i32 (...) @preempt_disable()
  %4 = load i64, i64* @cpu_has_msa, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %54

6:                                                ; preds = %1
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KVM_MIPS_AUX_MSA, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %6
  %15 = load i32, i32* @CONFIG_KVM_MIPS_VZ, align 4
  %16 = call i32 @IS_ENABLED(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @MIPS_CONF5_MSAEN, align 4
  %20 = call i32 @set_c0_config5(i32 %19)
  %21 = call i32 (...) @enable_fpu_hazard()
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = call i32 @__kvm_save_msa(%struct.TYPE_3__* %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = load i32, i32* @KVM_TRACE_AUX_SAVE, align 4
  %28 = load i32, i32* @KVM_TRACE_AUX_FPU_MSA, align 4
  %29 = call i32 @trace_kvm_aux(%struct.kvm_vcpu* %26, i32 %27, i32 %28)
  %30 = call i32 (...) @disable_msa()
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %22
  %39 = load i32, i32* @ST0_CU1, align 4
  %40 = load i32, i32* @ST0_FR, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @clear_c0_status(i32 %41)
  %43 = call i32 (...) @disable_fpu_hazard()
  br label %44

44:                                               ; preds = %38, %22
  %45 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %46 = load i32, i32* @KVM_MIPS_AUX_MSA, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %91

54:                                               ; preds = %6, %1
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %54
  %63 = load i32, i32* @CONFIG_KVM_MIPS_VZ, align 4
  %64 = call i32 @IS_ENABLED(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @ST0_CU1, align 4
  %68 = call i32 @set_c0_status(i32 %67)
  %69 = call i32 (...) @enable_fpu_hazard()
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = call i32 @__kvm_save_fpu(%struct.TYPE_3__* %72)
  %74 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %75
  store i32 %80, i32* %78, align 4
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %82 = load i32, i32* @KVM_TRACE_AUX_SAVE, align 4
  %83 = load i32, i32* @KVM_TRACE_AUX_FPU, align 4
  %84 = call i32 @trace_kvm_aux(%struct.kvm_vcpu* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @ST0_CU1, align 4
  %86 = load i32, i32* @ST0_FR, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @clear_c0_status(i32 %87)
  %89 = call i32 (...) @disable_fpu_hazard()
  br label %90

90:                                               ; preds = %70, %54
  br label %91

91:                                               ; preds = %90, %44
  %92 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @set_c0_config5(i32) #1

declare dso_local i32 @enable_fpu_hazard(...) #1

declare dso_local i32 @__kvm_save_msa(%struct.TYPE_3__*) #1

declare dso_local i32 @trace_kvm_aux(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @disable_msa(...) #1

declare dso_local i32 @clear_c0_status(i32) #1

declare dso_local i32 @disable_fpu_hazard(...) #1

declare dso_local i32 @set_c0_status(i32) #1

declare dso_local i32 @__kvm_save_fpu(%struct.TYPE_3__*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
