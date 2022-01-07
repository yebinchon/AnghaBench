; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_pin_guest_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_pin_guest_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kvmppc_pin_guest_page(%struct.kvm* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca [1 x %struct.page*], align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %9, align 8
  %19 = load %struct.kvm*, %struct.kvm** %5, align 8
  %20 = getelementptr inbounds %struct.kvm, %struct.kvm* %19, i32 0, i32 0
  %21 = call i32 @srcu_read_lock(i32* %20)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.kvm*, %struct.kvm** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %22, i64 %23)
  store %struct.kvm_memory_slot* %24, %struct.kvm_memory_slot** %8, align 8
  %25 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %26 = icmp ne %struct.kvm_memory_slot* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %29 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %3
  br label %71

35:                                               ; preds = %27
  %36 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @gfn_to_hva_memslot(%struct.kvm_memory_slot* %36, i64 %37)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i32, i32* @FOLL_WRITE, align 4
  %41 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %11, i64 0, i64 0
  %42 = call i32 @get_user_pages_fast(i64 %39, i32 1, i32 %40, %struct.page** %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %71

46:                                               ; preds = %35
  %47 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %11, i64 0, i64 0
  %48 = load %struct.page*, %struct.page** %47, align 8
  store %struct.page* %48, %struct.page** %10, align 8
  %49 = load %struct.kvm*, %struct.kvm** %5, align 8
  %50 = getelementptr inbounds %struct.kvm, %struct.kvm* %49, i32 0, i32 0
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @srcu_read_unlock(i32* %50, i32 %51)
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = and i64 %53, %56
  store i64 %57, i64* %14, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %14, align 8
  %64 = sub i64 %62, %63
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %46
  %67 = load %struct.page*, %struct.page** %10, align 8
  %68 = call i8* @page_address(%struct.page* %67)
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr i8, i8* %68, i64 %69
  store i8* %70, i8** %4, align 8
  br label %76

71:                                               ; preds = %45, %34
  %72 = load %struct.kvm*, %struct.kvm** %5, align 8
  %73 = getelementptr inbounds %struct.kvm, %struct.kvm* %72, i32 0, i32 0
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @srcu_read_unlock(i32* %73, i32 %74)
  store i8* null, i8** %4, align 8
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i8*, i8** %4, align 8
  ret i8* %77
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i64) #1

declare dso_local i64 @gfn_to_hva_memslot(%struct.kvm_memory_slot*, i64) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
