; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_vcpu_run_pr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_vcpu_run_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KVM_EXIT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@MSR_FP = common dso_local global i32 0, align 4
@BOOK3S_INTERRUPT_FP_UNAVAIL = common dso_local global i32 0, align 4
@MSR_VEC = common dso_local global i32 0, align 4
@MSR_VSX = common dso_local global i32 0, align 4
@FSCR_TAR_LG = common dso_local global i32 0, align 4
@OUTSIDE_GUEST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_run*, %struct.kvm_vcpu*)* @kvmppc_vcpu_run_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_vcpu_run_pr(%struct.kvm_run* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca %struct.kvm_run*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %3, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @KVM_EXIT_INTERNAL_ERROR, align 4
  %13 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = call i32 @kvmppc_setup_debug(%struct.kvm_vcpu* %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = call i32 @kvmppc_prepare_to_enter(%struct.kvm_vcpu* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %55

25:                                               ; preds = %17
  %26 = load i32, i32* @current, align 4
  %27 = call i32 @giveup_all(i32 %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %28)
  %30 = load i32, i32* @MSR_FP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = load i32, i32* @BOOK3S_INTERRUPT_FP_UNAVAIL, align 4
  %36 = load i32, i32* @MSR_FP, align 4
  %37 = call i32 @kvmppc_handle_ext(%struct.kvm_vcpu* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %25
  %39 = call i32 (...) @kvmppc_fix_ee_before_entry()
  %40 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %42 = call i32 @__kvmppc_vcpu_run(%struct.kvm_run* %40, %struct.kvm_vcpu* %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %44 = call i32 @kvmppc_clear_debug(%struct.kvm_vcpu* %43)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = load i32, i32* @MSR_FP, align 4
  %47 = load i32, i32* @MSR_VEC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MSR_VSX, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @kvmppc_giveup_ext(%struct.kvm_vcpu* %45, i32 %50)
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %53 = load i32, i32* @FSCR_TAR_LG, align 4
  %54 = call i32 @kvmppc_giveup_fac(%struct.kvm_vcpu* %52, i32 %53)
  br label %55

55:                                               ; preds = %38, %24, %11
  %56 = load i32, i32* @OUTSIDE_GUEST_MODE, align 4
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @kvmppc_setup_debug(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_prepare_to_enter(%struct.kvm_vcpu*) #1

declare dso_local i32 @giveup_all(i32) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_handle_ext(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_fix_ee_before_entry(...) #1

declare dso_local i32 @__kvmppc_vcpu_run(%struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_clear_debug(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_giveup_ext(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_giveup_fac(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
