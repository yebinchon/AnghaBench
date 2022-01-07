; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_commit_memory_region_hv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_commit_memory_region_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_userspace_memory_region = type { i64 }
%struct.kvm_memory_slot = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@KVM_MR_FLAGS_ONLY = common dso_local global i32 0, align 4
@KVM_MEM_LOG_DIRTY_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_userspace_memory_region*, %struct.kvm_memory_slot*, %struct.kvm_memory_slot*, i32)* @kvmppc_core_commit_memory_region_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_core_commit_memory_region_hv(%struct.kvm* %0, %struct.kvm_userspace_memory_region* %1, %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot* %3, i32 %4) #0 {
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_userspace_memory_region*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca %struct.kvm_memory_slot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvm_userspace_memory_region* %1, %struct.kvm_userspace_memory_region** %7, align 8
  store %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot** %8, align 8
  store %struct.kvm_memory_slot* %3, %struct.kvm_memory_slot** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %7, align 8
  %13 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = lshr i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.kvm*, %struct.kvm** %6, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @atomic64_inc(i32* %22)
  br label %24

24:                                               ; preds = %19, %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @KVM_MR_FLAGS_ONLY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.kvm*, %struct.kvm** %6, align 8
  %30 = call i64 @kvm_is_radix(%struct.kvm* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %34 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %37 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %35, %38
  %40 = load i32, i32* @KVM_MEM_LOG_DIRTY_PAGES, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.kvm*, %struct.kvm** %6, align 8
  %45 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %46 = call i32 @kvmppc_radix_flush_memslot(%struct.kvm* %44, %struct.kvm_memory_slot* %45)
  br label %47

47:                                               ; preds = %43, %32, %28, %24
  ret void
}

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_radix_flush_memslot(%struct.kvm*, %struct.kvm_memory_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
