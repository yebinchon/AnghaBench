; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_ioremap.c_remap_area_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_ioremap.c_remap_area_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_GLOBAL = common dso_local global i64 0, align 8
@_PAGE_PRESENT = common dso_local global i64 0, align 8
@__READABLE = common dso_local global i64 0, align 8
@__WRITEABLE = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"remap_area_pte: page already exists\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64, i64)* @remap_area_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap_area_pte(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* @_PAGE_GLOBAL, align 8
  %15 = load i64, i64* @_PAGE_PRESENT, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @__READABLE, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @__WRITEABLE, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* %10, align 8
  %22 = or i64 %20, %21
  %23 = call i32 @__pgprot(i64 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i64, i64* @PMD_MASK, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %7, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @PMD_SIZE, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i64, i64* @PMD_SIZE, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %34, %5
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp uge i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = lshr i64 %42, %43
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %73, %36
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pte_none(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 (...) @BUG()
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @pfn_pte(i64 %55, i32 %56)
  %58 = call i32 @set_pte(i32* %54, i32 %57)
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %12, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %6, align 8
  br label %66

66:                                               ; preds = %53
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ult i64 %70, %71
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br i1 %74, label %45, label %75

75:                                               ; preds = %73
  ret void
}

declare dso_local i32 @__pgprot(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
