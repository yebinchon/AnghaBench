; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pageattr.c_walk_pmd_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pageattr.c_walk_pmd_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64)* @walk_pmd_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_pmd_level(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32* @pmd_offset(i32* %13, i64 %14)
  store i32* %15, i32** %11, align 8
  br label %16

16:                                               ; preds = %74, %4
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pmd_none(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %80

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @pmd_addr_end(i64 %25, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @pmd_large(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @PMD_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = and i64 %33, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @PMD_SIZE, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* %10, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38, %32
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @split_pmd_page(i32* %45, i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %80

52:                                               ; preds = %44
  br label %74

53:                                               ; preds = %38
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @modify_pmd_page(i32* %54, i64 %55, i64 %56)
  br label %69

58:                                               ; preds = %24
  %59 = load i32*, i32** %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @walk_pte_level(i32* %59, i64 %60, i64 %61, i64 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %80

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %11, align 8
  %72 = load i64, i64* %10, align 8
  store i64 %72, i64* %7, align 8
  %73 = call i32 (...) @cond_resched()
  br label %74

74:                                               ; preds = %69, %52
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %16, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %66, %50, %21
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32 @split_pmd_page(i32*, i64) #1

declare dso_local i32 @modify_pmd_page(i32*, i64, i64) #1

declare dso_local i32 @walk_pte_level(i32*, i64, i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
