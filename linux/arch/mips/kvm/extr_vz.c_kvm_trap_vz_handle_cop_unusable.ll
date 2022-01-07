; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_cop_unusable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_cop_unusable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm_run* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm_run = type { i32 }

@RESUME_GUEST = common dso_local global i32 0, align 4
@CAUSEF_CE = common dso_local global i32 0, align 4
@CAUSEB_CE = common dso_local global i32 0, align 4
@KVM_MIPS_AUX_FPU = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@RESUME_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_trap_vz_handle_cop_unusable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_vz_handle_cop_unusable(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  store %struct.kvm_run* %10, %struct.kvm_run** %4, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  store i32 128, i32* %6, align 4
  %15 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CAUSEF_CE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @CAUSEB_CE, align 4
  %20 = ashr i32 %18, %19
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %45

22:                                               ; preds = %1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = call i32 @kvm_mips_guest_has_fpu(%struct.TYPE_2__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %27, %22
  %36 = phi i1 [ true, %22 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (...) @preempt_enable()
  store i32 128, i32* %2, align 4
  br label %58

42:                                               ; preds = %35
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i32 @kvm_own_fpu(%struct.kvm_vcpu* %43)
  store i32 129, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %1
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %54 [
    i32 129, label %47
    i32 128, label %49
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %48, i32* %7, align 4
  br label %56

49:                                               ; preds = %45
  %50 = load i32, i32* @KVM_EXIT_INTERNAL_ERROR, align 4
  %51 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @RESUME_HOST, align 4
  store i32 %53, i32* %7, align 4
  br label %56

54:                                               ; preds = %45
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54, %49, %47
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %40
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kvm_mips_guest_has_fpu(%struct.TYPE_2__*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @kvm_own_fpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
