; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_msa_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_msa_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm_run* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_run = type { i32 }

@ST0_CU1 = common dso_local global i32 0, align 4
@ST0_FR = common dso_local global i32 0, align 4
@MIPS_CONF5_MSAEN = common dso_local global i32 0, align 4
@KVM_MIPS_AUX_MSA = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@RESUME_HOST = common dso_local global i32 0, align 4
@RESUME_GUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_trap_vz_handle_msa_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_vz_handle_msa_disabled(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 1
  %7 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  store %struct.kvm_run* %7, %struct.kvm_run** %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = call i32 @kvm_mips_guest_has_msa(%struct.TYPE_2__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = call i32 (...) @read_gc0_status()
  %14 = load i32, i32* @ST0_CU1, align 4
  %15 = load i32, i32* @ST0_FR, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @ST0_CU1, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %33, label %20

20:                                               ; preds = %12
  %21 = call i32 (...) @read_gc0_config5()
  %22 = load i32, i32* @MIPS_CONF5_MSAEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @KVM_MIPS_AUX_MSA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25, %20, %12, %1
  %34 = load i32, i32* @KVM_EXIT_INTERNAL_ERROR, align 4
  %35 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @RESUME_HOST, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %25
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call i32 @kvm_own_msa(%struct.kvm_vcpu* %39)
  %41 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @kvm_mips_guest_has_msa(%struct.TYPE_2__*) #1

declare dso_local i32 @read_gc0_status(...) #1

declare dso_local i32 @read_gc0_config5(...) #1

declare dso_local i32 @kvm_own_msa(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
