; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_walk_pgd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_walk_pgd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_memory_cache = type { i32 }

@invalid_pte_table = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.kvm_mmu_memory_cache*, i64)* @kvm_mips_walk_pgd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @kvm_mips_walk_pgd(i32* %0, %struct.kvm_mmu_memory_cache* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvm_mmu_memory_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.kvm_mmu_memory_cache* %1, %struct.kvm_mmu_memory_cache** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @pgd_index(i64 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pgd_none(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 (...) @BUG()
  store i32* null, i32** %4, align 8
  br label %71

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32* @pud_offset(i32* %24, i64 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @pud_none(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %6, align 8
  %33 = icmp ne %struct.kvm_mmu_memory_cache* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32* null, i32** %4, align 8
  br label %71

35:                                               ; preds = %31
  %36 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %6, align 8
  %37 = call i8* @mmu_memory_cache_alloc(%struct.kvm_mmu_memory_cache* %36)
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = ptrtoint i32* %39 to i64
  %41 = load i64, i64* @invalid_pte_table, align 8
  %42 = call i32 @pmd_init(i64 %40, i64 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @pud_populate(i32* null, i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %35, %23
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32* @pmd_offset(i32* %47, i64 %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @pmd_none(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %6, align 8
  %56 = icmp ne %struct.kvm_mmu_memory_cache* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i32* null, i32** %4, align 8
  br label %71

58:                                               ; preds = %54
  %59 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %6, align 8
  %60 = call i8* @mmu_memory_cache_alloc(%struct.kvm_mmu_memory_cache* %59)
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @clear_page(i32* %62)
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @pmd_populate_kernel(i32* null, i32* %64, i32* %65)
  br label %67

67:                                               ; preds = %58, %46
  %68 = load i32*, i32** %9, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32* @pte_offset(i32* %68, i64 %69)
  store i32* %70, i32** %4, align 8
  br label %71

71:                                               ; preds = %67, %57, %34, %21
  %72 = load i32*, i32** %4, align 8
  ret i32* %72
}

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i8* @mmu_memory_cache_alloc(%struct.kvm_mmu_memory_cache*) #1

declare dso_local i32 @pmd_init(i64, i64) #1

declare dso_local i32 @pud_populate(i32*, i32*, i32*) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @clear_page(i32*) #1

declare dso_local i32 @pmd_populate_kernel(i32*, i32*, i32*) #1

declare dso_local i32* @pte_offset(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
