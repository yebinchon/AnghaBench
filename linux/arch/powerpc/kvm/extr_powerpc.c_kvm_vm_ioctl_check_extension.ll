; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_vm_ioctl_check_extension.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_vm_ioctl_check_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32*)* }
%struct.TYPE_6__ = type { i32 }
%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@kvmppc_hv_ops = common dso_local global %struct.TYPE_5__* null, align 8
@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@KVM_MAX_VCPU_ID = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@CPU_FTR_P9_TM_HV_ASSIST = common dso_local global i32 0, align 4
@PPC_FEATURE2_HTM = common dso_local global i32 0, align 4
@cur_cpu_spec = common dso_local global %struct.TYPE_6__* null, align 8
@threads_per_subcore = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_check_extension(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kvmppc_hv_ops, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 1, i32 0
  store i32 %10, i32* %6, align 4
  %11 = load %struct.kvm*, %struct.kvm** %3, align 8
  %12 = icmp ne %struct.kvm* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.kvm*, %struct.kvm** %3, align 8
  %15 = call i32 @is_kvmppc_hv_enabled(%struct.kvm* %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i64, i64* %4, align 8
  switch i64 %17, label %37 [
    i64 138, label %18
    i64 152, label %18
    i64 141, label %18
    i64 135, label %18
    i64 148, label %18
    i64 171, label %18
    i64 163, label %18
    i64 169, label %18
    i64 172, label %18
    i64 170, label %18
    i64 142, label %19
    i64 143, label %19
    i64 154, label %19
    i64 128, label %24
    i64 164, label %25
    i64 166, label %33
    i64 165, label %35
  ]

18:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  store i32 1, i32* %5, align 4
  br label %38

19:                                               ; preds = %16, %16, %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  br label %38

24:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @num_present_cpus()
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %25
  %31 = call i32 (...) @num_online_cpus()
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %38

33:                                               ; preds = %16
  %34 = load i32, i32* @KVM_MAX_VCPUS, align 4
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %16
  %36 = load i32, i32* @KVM_MAX_VCPU_ID, align 4
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %35, %33, %32, %24, %19, %18
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @is_kvmppc_hv_enabled(%struct.kvm*) #1

declare dso_local i32 @num_present_cpus(...) #1

declare dso_local i32 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
