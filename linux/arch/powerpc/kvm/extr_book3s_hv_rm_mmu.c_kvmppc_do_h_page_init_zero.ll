; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_do_h_page_init_zero.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_do_h_page_init_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@H_SUCCESS = common dso_local global i64 0, align 8
@H_TOO_HARD = common dso_local global i64 0, align 8
@SZ_4K = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i64)* @kvmppc_do_h_page_init_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvmppc_do_h_page_init_zero(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = load %struct.kvm*, %struct.kvm** %13, align 8
  store %struct.kvm* %14, %struct.kvm** %7, align 8
  %15 = load i64, i64* @H_SUCCESS, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.kvm*, %struct.kvm** %7, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = call i32 (...) @smp_rmb()
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @kvmppc_get_hpa(%struct.kvm_vcpu* %20, i64 %21, i32 1, i64* %8, %struct.kvm_memory_slot** %6)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @H_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %3, align 8
  br label %70

28:                                               ; preds = %2
  %29 = load %struct.kvm*, %struct.kvm** %7, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @raw_spin_lock(i32* %31)
  %33 = load %struct.kvm*, %struct.kvm** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @mmu_notifier_retry(%struct.kvm* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %38, i64* %10, align 8
  br label %64

39:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %48, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @SZ_4K, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @dcbz(i8* %46)
  br label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @L1_CACHE_BYTES, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i64, i64* @L1_CACHE_BYTES, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %40

57:                                               ; preds = %40
  %58 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @PAGE_SHIFT, align 8
  %61 = lshr i64 %59, %60
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = call i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot* %58, i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %37
  %65 = load %struct.kvm*, %struct.kvm** %7, align 8
  %66 = getelementptr inbounds %struct.kvm, %struct.kvm* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @raw_spin_unlock(i32* %67)
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %64, %26
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @kvmppc_get_hpa(%struct.kvm_vcpu*, i64, i32, i64*, %struct.kvm_memory_slot**) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @mmu_notifier_retry(%struct.kvm*, i64) #1

declare dso_local i32 @dcbz(i8*) #1

declare dso_local i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot*, i64, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
