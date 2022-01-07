; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_ioremap.c_remap_area_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_ioremap.c_remap_area_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PGDIR_MASK = common dso_local global i64 0, align 8
@PGDIR_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i64)* @remap_area_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_area_pmd(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* @PGDIR_MASK, align 8
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %8, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @PGDIR_SIZE, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* @PGDIR_SIZE, align 8
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %24, %5
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %33, %26
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32* @pte_alloc_kernel(i32* %37, i64 %38)
  store i32* %39, i32** %13, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %73

45:                                               ; preds = %36
  %46 = load i32*, i32** %13, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @remap_area_pte(i32* %46, i64 %47, i64 %50, i64 %53, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @PMD_SIZE, align 8
  %58 = add i64 %56, %57
  %59 = load i64, i64* @PMD_MASK, align 8
  %60 = and i64 %58, %59
  store i64 %60, i64* %8, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %7, align 8
  br label %63

63:                                               ; preds = %45
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp ult i64 %67, %68
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i1 [ false, %63 ], [ %69, %66 ]
  br i1 %71, label %36, label %72

72:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %42
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32* @pte_alloc_kernel(i32*, i64) #1

declare dso_local i32 @remap_area_pte(i32*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
