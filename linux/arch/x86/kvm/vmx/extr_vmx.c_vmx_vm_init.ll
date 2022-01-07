; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vm_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ple_gap = common dso_local global i32 0, align 4
@X86_BUG_L1TF = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i64 0, align 8
@l1tf_mitigation = common dso_local global i32 0, align 4
@L1TF_MSG_SMT = common dso_local global i32 0, align 4
@l1tf_vmx_mitigation = common dso_local global i32 0, align 4
@VMENTER_L1D_FLUSH_NEVER = common dso_local global i32 0, align 4
@L1TF_MSG_L1D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*)* @vmx_vm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_vm_init(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = call %struct.TYPE_4__* @to_kvm_vmx(%struct.kvm* %3)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_init(i32* %5)
  %7 = load i32, i32* @ple_gap, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.kvm*, %struct.kvm** %2, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @X86_BUG_L1TF, align 4
  %15 = call i64 @boot_cpu_has(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i64, i64* @enable_ept, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i32, i32* @l1tf_mitigation, align 4
  switch i32 %21, label %38 [
    i32 128, label %22
    i32 131, label %22
    i32 133, label %23
    i32 132, label %23
    i32 130, label %23
    i32 129, label %37
  ]

22:                                               ; preds = %20, %20
  br label %38

23:                                               ; preds = %20, %20, %20
  %24 = call i32 (...) @sched_smt_active()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @L1TF_MSG_SMT, align 4
  %28 = call i32 @pr_warn_once(i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @l1tf_vmx_mitigation, align 4
  %31 = load i32, i32* @VMENTER_L1D_FLUSH_NEVER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @L1TF_MSG_L1D, align 4
  %35 = call i32 @pr_warn_once(i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  br label %38

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %20, %37, %36, %22
  br label %39

39:                                               ; preds = %38, %17, %13
  ret i32 0
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_4__* @to_kvm_vmx(%struct.kvm*) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @sched_smt_active(...) #1

declare dso_local i32 @pr_warn_once(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
