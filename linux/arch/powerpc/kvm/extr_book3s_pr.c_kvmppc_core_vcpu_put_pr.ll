; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_core_vcpu_put_pr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_core_vcpu_put_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@MSR_FP = common dso_local global i32 0, align 4
@MSR_VEC = common dso_local global i32 0, align 4
@MSR_VSX = common dso_local global i32 0, align 4
@FSCR_TAR_LG = common dso_local global i32 0, align 4
@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@LPCR_AIL_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @kvmppc_core_vcpu_put_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_core_vcpu_put_pr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %4 = call i64 @kvmppc_is_split_real(%struct.kvm_vcpu* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i32 @kvmppc_unfixup_split_real(%struct.kvm_vcpu* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = load i32, i32* @MSR_FP, align 4
  %12 = load i32, i32* @MSR_VEC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MSR_VSX, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @kvmppc_giveup_ext(%struct.kvm_vcpu* %10, i32 %15)
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = load i32, i32* @FSCR_TAR_LG, align 4
  %19 = call i32 @kvmppc_giveup_fac(%struct.kvm_vcpu* %17, i32 %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = call i32 @kvmppc_save_tm_pr(%struct.kvm_vcpu* %20)
  %22 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %23 = call i64 @cpu_has_feature(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %9
  %26 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %27 = call i64 @cpu_has_feature(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* @SPRN_LPCR, align 4
  %31 = load i32, i32* @SPRN_LPCR, align 4
  %32 = call i32 @mfspr(i32 %31)
  %33 = load i32, i32* @LPCR_AIL_3, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @mtspr(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %25, %9
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 4
  ret void
}

declare dso_local i64 @kvmppc_is_split_real(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_unfixup_split_real(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_giveup_ext(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_giveup_fac(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_save_tm_pr(%struct.kvm_vcpu*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
