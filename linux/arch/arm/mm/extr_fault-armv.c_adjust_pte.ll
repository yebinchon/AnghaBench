; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_fault-armv.c_adjust_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_fault-armv.c_adjust_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64)* @adjust_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_pte(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @pgd_offset(i32 %16, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @pgd_none_or_clear_bad(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32* @pud_offset(i32* %24, i64 %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i64 @pud_none_or_clear_bad(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %60

31:                                               ; preds = %23
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32* @pmd_offset(i32* %32, i64 %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i64 @pmd_none_or_clear_bad(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %60

39:                                               ; preds = %31
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @pte_lockptr(i32 %42, i32* %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32* @pte_offset_map(i32* %45, i64 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @do_pte_lock(i32* %48)
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @do_adjust_pte(%struct.vm_area_struct* %50, i64 %51, i64 %52, i32* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @do_pte_unlock(i32* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @pte_unmap(i32* %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %39, %38, %30, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none_or_clear_bad(i32*) #1

declare dso_local i32* @pte_lockptr(i32, i32*) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @do_pte_lock(i32*) #1

declare dso_local i32 @do_adjust_pte(%struct.vm_area_struct*, i64, i64, i32*) #1

declare dso_local i32 @do_pte_unlock(i32*) #1

declare dso_local i32 @pte_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
