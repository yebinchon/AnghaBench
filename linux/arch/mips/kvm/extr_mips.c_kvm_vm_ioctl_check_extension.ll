; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_vm_ioctl_check_extension.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_vm_ioctl_check_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.kvm*, i64)* }
%struct.kvm = type { i32 }

@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@KVM_MAX_VCPU_ID = common dso_local global i32 0, align 4
@raw_cpu_has_fpu = common dso_local global i32 0, align 4
@cpu_has_msa = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MSA_IR_WRPF = common dso_local global i32 0, align 4
@kvm_mips_callbacks = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_check_extension(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  switch i64 %6, label %32 [
    i64 130, label %7
    i64 137, label %7
    i64 129, label %7
    i64 128, label %7
    i64 136, label %7
    i64 131, label %8
    i64 135, label %10
    i64 134, label %12
    i64 133, label %14
    i64 132, label %20
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  store i32 1, i32* %5, align 4
  br label %39

8:                                                ; preds = %2
  %9 = call i32 (...) @num_online_cpus()
  store i32 %9, i32* %5, align 4
  br label %39

10:                                               ; preds = %2
  %11 = load i32, i32* @KVM_MAX_VCPUS, align 4
  store i32 %11, i32* %5, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i32, i32* @KVM_MAX_VCPU_ID, align 4
  store i32 %13, i32* %5, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* @raw_cpu_has_fpu, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load i32, i32* @cpu_has_msa, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %25 = load i32, i32* @MSA_IR_WRPF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kvm_mips_callbacks, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.kvm*, i64)*, i32 (%struct.kvm*, i64)** %34, align 8
  %36 = load %struct.kvm*, %struct.kvm** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 %35(%struct.kvm* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %29, %14, %12, %10, %8, %7
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
