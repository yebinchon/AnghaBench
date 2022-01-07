; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_unmap_free_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_unmap_free_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@PTRS_PER_PMD = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, i32, i32)* @kvmppc_unmap_free_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_unmap_free_pmd(%struct.kvm* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %10, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %58, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @PTRS_PER_PMD, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %13
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pmd_present(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %58

23:                                               ; preds = %17
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pmd_is_leaf(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @pmd_clear(i32* %32)
  br label %46

34:                                               ; preds = %28
  %35 = call i32 @WARN_ON_ONCE(i32 1)
  %36 = load %struct.kvm*, %struct.kvm** %5, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pte_pfn(i32 %39)
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @PMD_SHIFT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @kvmppc_unmap_pte(%struct.kvm* %36, i32* %37, i32 %42, i32 %43, i32* null, i32 %44)
  br label %46

46:                                               ; preds = %34, %31
  br label %57

47:                                               ; preds = %23
  %48 = load i32*, i32** %10, align 8
  %49 = call i32* @pte_offset_map(i32* %48, i32 0)
  store i32* %49, i32** %11, align 8
  %50 = load %struct.kvm*, %struct.kvm** %5, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @kvmppc_unmap_free_pte(%struct.kvm* %50, i32* %51, i32 %52, i32 %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @pmd_clear(i32* %55)
  br label %57

57:                                               ; preds = %47, %46
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %9, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %10, align 8
  br label %13

63:                                               ; preds = %13
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @kvmppc_pmd_free(i32* %64)
  ret void
}

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @pmd_is_leaf(i32) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kvmppc_unmap_pte(%struct.kvm*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i32) #1

declare dso_local i32 @kvmppc_unmap_free_pte(%struct.kvm*, i32*, i32, i32) #1

declare dso_local i32 @kvmppc_pmd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
