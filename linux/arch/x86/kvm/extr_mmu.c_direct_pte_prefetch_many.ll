; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_direct_pte_prefetch_many.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_direct_pte_prefetch_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm_memory_slot = type { i32 }
%struct.page = type { i32 }

@PTE_PREFETCH_NUM = common dso_local global i32 0, align 4
@ACC_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_mmu_page*, i32*, i32*)* @direct_pte_prefetch_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @direct_pte_prefetch_many(%struct.kvm_vcpu* %0, %struct.kvm_mmu_page* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_mmu_page*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.kvm_memory_slot*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @PTE_PREFETCH_NUM, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca %struct.page*, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = call i32 @kvm_mmu_page_get_gfn(%struct.kvm_mmu_page* %26, i32* %33)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @ACC_WRITE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = call %struct.kvm_memory_slot* @gfn_to_memslot_dirty_bitmap(%struct.kvm_vcpu* %35, i32 %36, i32 %39)
  store %struct.kvm_memory_slot* %40, %struct.kvm_memory_slot** %12, align 8
  %41 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %12, align 8
  %42 = icmp ne %struct.kvm_memory_slot* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

44:                                               ; preds = %4
  %45 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %12, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = ptrtoint i32* %47 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @gfn_to_page_many_atomic(%struct.kvm_memory_slot* %45, i32 %46, %struct.page** %21, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

58:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %83, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.page*, %struct.page** %21, i64 %73
  %75 = load %struct.page*, %struct.page** %74, align 8
  %76 = call i32 @page_to_pfn(%struct.page* %75)
  %77 = call i32 @mmu_set_spte(%struct.kvm_vcpu* %64, i32* %65, i32 %66, i32 0, i32 %70, i32 %71, i32 %76, i32 1, i32 1)
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.page*, %struct.page** %21, i64 %79
  %81 = load %struct.page*, %struct.page** %80, align 8
  %82 = call i32 @put_page(%struct.page* %81)
  br label %83

83:                                               ; preds = %63
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %8, align 8
  br label %59

90:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

91:                                               ; preds = %90, %57, %43
  %92 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kvm_mmu_page_get_gfn(%struct.kvm_mmu_page*, i32*) #2

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot_dirty_bitmap(%struct.kvm_vcpu*, i32, i32) #2

declare dso_local i32 @gfn_to_page_many_atomic(%struct.kvm_memory_slot*, i32, %struct.page**, i32) #2

declare dso_local i32 @mmu_set_spte(%struct.kvm_vcpu*, i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @page_to_pfn(%struct.page*) #2

declare dso_local i32 @put_page(%struct.page*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
