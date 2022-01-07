; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_unpin_guest_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_unpin_guest_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.page = type { i32 }
%struct.kvm_memory_slot = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_unpin_guest_page(%struct.kvm* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.kvm_memory_slot*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.page* @virt_to_page(i8* %13)
  store %struct.page* %14, %struct.page** %9, align 8
  %15 = load %struct.page*, %struct.page** %9, align 8
  %16 = call i32 @put_page(%struct.page* %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %52

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %11, align 8
  %24 = load %struct.kvm*, %struct.kvm** %5, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = call i32 @srcu_read_lock(i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.kvm*, %struct.kvm** %5, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %27, i64 %28)
  store %struct.kvm_memory_slot* %29, %struct.kvm_memory_slot** %10, align 8
  %30 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %10, align 8
  %31 = icmp ne %struct.kvm_memory_slot* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %20
  %33 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %10, align 8
  %34 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %10, align 8
  %40 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %10, align 8
  %44 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @set_bit_le(i64 %42, i64 %45)
  br label %47

47:                                               ; preds = %37, %32, %20
  %48 = load %struct.kvm*, %struct.kvm** %5, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 0
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @srcu_read_unlock(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %19
  ret void
}

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i64) #1

declare dso_local i32 @set_bit_le(i64, i64) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
