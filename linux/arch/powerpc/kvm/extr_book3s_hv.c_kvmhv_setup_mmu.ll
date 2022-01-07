; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_setup_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_setup_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvmhv_setup_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmhv_setup_mmu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = load %struct.kvm*, %struct.kvm** %6, align 8
  store %struct.kvm* %7, %struct.kvm** %4, align 8
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.kvm*, %struct.kvm** %4, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %1
  %18 = load %struct.kvm*, %struct.kvm** %4, align 8
  %19 = call i32 @kvm_is_radix(%struct.kvm* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = call i32 @kvmppc_hv_setup_htab_rma(%struct.kvm_vcpu* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %29 = call i64 @cpu_has_feature(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.kvm*, %struct.kvm** %4, align 8
  %33 = call i32 @kvmppc_setup_partition_table(%struct.kvm* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load %struct.kvm*, %struct.kvm** %4, align 8
  %36 = getelementptr inbounds %struct.kvm, %struct.kvm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %24
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.kvm*, %struct.kvm** %4, align 8
  %41 = getelementptr inbounds %struct.kvm, %struct.kvm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_hv_setup_htab_rma(%struct.kvm_vcpu*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @kvmppc_setup_partition_table(%struct.kvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
