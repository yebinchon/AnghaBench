; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_set_partition_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_set_partition_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@H_SUCCESS = common dso_local global i64 0, align 8
@PRTS_MASK = common dso_local global i64 0, align 8
@PRTB_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@H_PARAMETER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmhv_set_partition_table(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = load %struct.kvm*, %struct.kvm** %8, align 8
  store %struct.kvm* %9, %struct.kvm** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call i64 @kvmppc_get_gpr(%struct.kvm_vcpu* %10, i32 4)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @H_SUCCESS, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 1
  %15 = call i32 @srcu_read_lock(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @PRTS_MASK, align 8
  %18 = and i64 %16, %17
  %19 = icmp ugt i64 %18, 4
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = load %struct.kvm*, %struct.kvm** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @PRTB_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  %29 = call i32 @kvm_is_visible_gfn(%struct.kvm* %23, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20, %1
  %32 = load i64, i64* @H_PARAMETER, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %31, %20
  %34 = load %struct.kvm*, %struct.kvm** %3, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 1
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @srcu_read_unlock(i32* %35, i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @H_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.kvm*, %struct.kvm** %3, align 8
  %44 = getelementptr inbounds %struct.kvm, %struct.kvm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i64, i64* %6, align 8
  ret i64 %47
}

declare dso_local i64 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvm_is_visible_gfn(%struct.kvm*, i64) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
