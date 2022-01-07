; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_do_h_page_init_copy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_do_h_page_init_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@H_SUCCESS = common dso_local global i64 0, align 8
@H_TOO_HARD = common dso_local global i64 0, align 8
@SZ_4K = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i64, i64)* @kvmppc_do_h_page_init_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvmppc_do_h_page_init_copy(%struct.kvm_vcpu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.kvm_memory_slot*, align 8
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = load %struct.kvm*, %struct.kvm** %15, align 8
  store %struct.kvm* %16, %struct.kvm** %12, align 8
  %17 = load i64, i64* @H_SUCCESS, align 8
  store i64 %17, i64* %13, align 8
  %18 = load %struct.kvm*, %struct.kvm** %12, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = call i32 (...) @smp_rmb()
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @kvmppc_get_hpa(%struct.kvm_vcpu* %22, i64 %23, i32 1, i64* %8, %struct.kvm_memory_slot** %11)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @H_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i64, i64* %13, align 8
  store i64 %29, i64* %4, align 8
  br label %69

30:                                               ; preds = %3
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @kvmppc_get_hpa(%struct.kvm_vcpu* %31, i64 %32, i32 0, i64* %9, %struct.kvm_memory_slot** null)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @H_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* %13, align 8
  store i64 %38, i64* %4, align 8
  br label %69

39:                                               ; preds = %30
  %40 = load %struct.kvm*, %struct.kvm** %12, align 8
  %41 = getelementptr inbounds %struct.kvm, %struct.kvm* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @raw_spin_lock(i32* %42)
  %44 = load %struct.kvm*, %struct.kvm** %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @mmu_notifier_retry(%struct.kvm* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %49, i64* %13, align 8
  br label %63

50:                                               ; preds = %39
  %51 = load i64, i64* %8, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i64, i64* %9, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* @SZ_4K, align 4
  %56 = call i32 @memcpy(i8* %52, i8* %54, i32 %55)
  %57 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = call i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot* %57, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %50, %48
  %64 = load %struct.kvm*, %struct.kvm** %12, align 8
  %65 = getelementptr inbounds %struct.kvm, %struct.kvm* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @raw_spin_unlock(i32* %66)
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %63, %37, %28
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @kvmppc_get_hpa(%struct.kvm_vcpu*, i64, i32, i64*, %struct.kvm_memory_slot**) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @mmu_notifier_retry(%struct.kvm*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot*, i64, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
