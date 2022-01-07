; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_asm-offsets.c_output_mm_defines.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_asm-offsets.c_output_mm_defines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Size of struct page\00", align 1
@STRUCT_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Linux mm_struct offsets.\00", align 1
@MM_USERS = common dso_local global i32 0, align 4
@mm_struct = common dso_local global i32 0, align 4
@mm_users = common dso_local global i32 0, align 4
@MM_PGD = common dso_local global i32 0, align 4
@pgd = common dso_local global i32 0, align 4
@MM_CONTEXT = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@_PGD_T_SIZE = common dso_local global i32 0, align 4
@_PMD_T_SIZE = common dso_local global i32 0, align 4
@_PTE_T_SIZE = common dso_local global i32 0, align 4
@_PGD_T_LOG2 = common dso_local global i32 0, align 4
@PGD_T_LOG2 = common dso_local global i32 0, align 4
@_PMD_T_LOG2 = common dso_local global i32 0, align 4
@PMD_T_LOG2 = common dso_local global i32 0, align 4
@_PTE_T_LOG2 = common dso_local global i32 0, align 4
@PTE_T_LOG2 = common dso_local global i32 0, align 4
@_PGD_ORDER = common dso_local global i32 0, align 4
@PGD_ORDER = common dso_local global i32 0, align 4
@_PMD_ORDER = common dso_local global i32 0, align 4
@PMD_ORDER = common dso_local global i32 0, align 4
@_PTE_ORDER = common dso_local global i32 0, align 4
@PTE_ORDER = common dso_local global i32 0, align 4
@_PMD_SHIFT = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4
@_PGDIR_SHIFT = common dso_local global i32 0, align 4
@PGDIR_SHIFT = common dso_local global i32 0, align 4
@_PTRS_PER_PGD = common dso_local global i32 0, align 4
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@_PTRS_PER_PMD = common dso_local global i32 0, align 4
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@_PTRS_PER_PTE = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@_PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_mm_defines() #0 {
  %1 = call i32 @COMMENT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @STRUCT_PAGE_SIZE, align 4
  %3 = call i32 @DEFINE(i32 %2, i32 4)
  %4 = call i32 (...) @BLANK()
  %5 = call i32 @COMMENT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @MM_USERS, align 4
  %7 = load i32, i32* @mm_struct, align 4
  %8 = load i32, i32* @mm_users, align 4
  %9 = call i32 @OFFSET(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @MM_PGD, align 4
  %11 = load i32, i32* @mm_struct, align 4
  %12 = load i32, i32* @pgd, align 4
  %13 = call i32 @OFFSET(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @MM_CONTEXT, align 4
  %15 = load i32, i32* @mm_struct, align 4
  %16 = load i32, i32* @context, align 4
  %17 = call i32 @OFFSET(i32 %14, i32 %15, i32 %16)
  %18 = call i32 (...) @BLANK()
  %19 = load i32, i32* @_PGD_T_SIZE, align 4
  %20 = call i32 @DEFINE(i32 %19, i32 4)
  %21 = load i32, i32* @_PMD_T_SIZE, align 4
  %22 = call i32 @DEFINE(i32 %21, i32 4)
  %23 = load i32, i32* @_PTE_T_SIZE, align 4
  %24 = call i32 @DEFINE(i32 %23, i32 4)
  %25 = call i32 (...) @BLANK()
  %26 = load i32, i32* @_PGD_T_LOG2, align 4
  %27 = load i32, i32* @PGD_T_LOG2, align 4
  %28 = call i32 @DEFINE(i32 %26, i32 %27)
  %29 = load i32, i32* @_PMD_T_LOG2, align 4
  %30 = load i32, i32* @PMD_T_LOG2, align 4
  %31 = call i32 @DEFINE(i32 %29, i32 %30)
  %32 = load i32, i32* @_PTE_T_LOG2, align 4
  %33 = load i32, i32* @PTE_T_LOG2, align 4
  %34 = call i32 @DEFINE(i32 %32, i32 %33)
  %35 = call i32 (...) @BLANK()
  %36 = load i32, i32* @_PGD_ORDER, align 4
  %37 = load i32, i32* @PGD_ORDER, align 4
  %38 = call i32 @DEFINE(i32 %36, i32 %37)
  %39 = load i32, i32* @_PMD_ORDER, align 4
  %40 = load i32, i32* @PMD_ORDER, align 4
  %41 = call i32 @DEFINE(i32 %39, i32 %40)
  %42 = load i32, i32* @_PTE_ORDER, align 4
  %43 = load i32, i32* @PTE_ORDER, align 4
  %44 = call i32 @DEFINE(i32 %42, i32 %43)
  %45 = call i32 (...) @BLANK()
  %46 = load i32, i32* @_PMD_SHIFT, align 4
  %47 = load i32, i32* @PMD_SHIFT, align 4
  %48 = call i32 @DEFINE(i32 %46, i32 %47)
  %49 = load i32, i32* @_PGDIR_SHIFT, align 4
  %50 = load i32, i32* @PGDIR_SHIFT, align 4
  %51 = call i32 @DEFINE(i32 %49, i32 %50)
  %52 = call i32 (...) @BLANK()
  %53 = load i32, i32* @_PTRS_PER_PGD, align 4
  %54 = load i32, i32* @PTRS_PER_PGD, align 4
  %55 = call i32 @DEFINE(i32 %53, i32 %54)
  %56 = load i32, i32* @_PTRS_PER_PMD, align 4
  %57 = load i32, i32* @PTRS_PER_PMD, align 4
  %58 = call i32 @DEFINE(i32 %56, i32 %57)
  %59 = load i32, i32* @_PTRS_PER_PTE, align 4
  %60 = load i32, i32* @PTRS_PER_PTE, align 4
  %61 = call i32 @DEFINE(i32 %59, i32 %60)
  %62 = call i32 (...) @BLANK()
  %63 = load i32, i32* @_PAGE_SHIFT, align 4
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = call i32 @DEFINE(i32 %63, i32 %64)
  %66 = load i32, i32* @_PAGE_SIZE, align 4
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = call i32 @DEFINE(i32 %66, i32 %67)
  %69 = call i32 (...) @BLANK()
  ret void
}

declare dso_local i32 @COMMENT(i8*) #1

declare dso_local i32 @DEFINE(i32, i32) #1

declare dso_local i32 @BLANK(...) #1

declare dso_local i32 @OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
