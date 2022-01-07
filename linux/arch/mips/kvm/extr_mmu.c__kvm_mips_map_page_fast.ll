; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c__kvm_mips_map_page_fast.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c__kvm_mips_map_page_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32, i32*, i32*)* @_kvm_mips_map_page_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_kvm_mips_map_page_fast(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.kvm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = load %struct.kvm*, %struct.kvm** %18, align 8
  store %struct.kvm* %19, %struct.kvm** %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = lshr i64 %20, %21
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.kvm*, %struct.kvm** %11, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.kvm*, %struct.kvm** %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32* @kvm_mips_pte_for_gpa(%struct.kvm* %26, i32* null, i64 %27)
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pte_present(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %5
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %16, align 4
  br label %99

39:                                               ; preds = %31
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pte_young(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pte_mkyoung(i32 %47)
  %49 = call i32 @set_pte(i32* %45, i32 %48)
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pte_pfn(i32 %51)
  store i32 %52, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %53

53:                                               ; preds = %44, %39
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pte_dirty(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pte_write(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @EFAULT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %16, align 4
  br label %99

69:                                               ; preds = %61
  %70 = load i32*, i32** %13, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pte_mkdirty(i32 %72)
  %74 = call i32 @set_pte(i32* %70, i32 %73)
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pte_pfn(i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load %struct.kvm*, %struct.kvm** %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @mark_page_dirty(%struct.kvm* %78, i64 %79)
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @kvm_set_pfn_dirty(i32 %81)
  br label %83

83:                                               ; preds = %69, %56, %53
  %84 = load i32*, i32** %9, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32*, i32** %13, align 8
  %95 = call i32* @ptep_buddy(i32* %94)
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %90
  br label %99

99:                                               ; preds = %98, %66, %36
  %100 = load %struct.kvm*, %struct.kvm** %11, align 8
  %101 = getelementptr inbounds %struct.kvm, %struct.kvm* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @kvm_set_pfn_accessed(i32 %106)
  br label %108

108:                                              ; preds = %105, %99
  %109 = load i32, i32* %16, align 4
  ret i32 %109
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @kvm_mips_pte_for_gpa(%struct.kvm*, i32*, i64) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_young(i32) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @pte_dirty(i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @mark_page_dirty(%struct.kvm*, i64) #1

declare dso_local i32 @kvm_set_pfn_dirty(i32) #1

declare dso_local i32* @ptep_buddy(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_set_pfn_accessed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
