; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_pgd_prepopulate_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_pgd_prepopulate_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PREALLOCATED_PMDS = common dso_local global i32 0, align 4
@KERNEL_PGD_BOUNDARY = common dso_local global i32 0, align 4
@swapper_pg_dir = common dso_local global i32* null, align 8
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32*, i32**)* @pgd_prepopulate_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgd_prepopulate_pmd(%struct.mm_struct* %0, i32* %1, i32** %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* @PREALLOCATED_PMDS, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %56

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @p4d_offset(i32* %15, i32 0)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @pud_offset(i32* %17, i32 0)
  store i32* %18, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %51, %14
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PREALLOCATED_PMDS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @KERNEL_PGD_BOUNDARY, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** @swapper_pg_dir, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @pgd_page_vaddr(i32 %38)
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* @PTRS_PER_PMD, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcpy(i32* %33, i32* %40, i32 %44)
  br label %46

46:                                               ; preds = %32, %23
  %47 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @pud_populate(%struct.mm_struct* %47, i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  br label %19

56:                                               ; preds = %13, %19
  ret void
}

declare dso_local i32* @p4d_offset(i32*, i32) #1

declare dso_local i32* @pud_offset(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @pgd_page_vaddr(i32) #1

declare dso_local i32 @pud_populate(%struct.mm_struct*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
