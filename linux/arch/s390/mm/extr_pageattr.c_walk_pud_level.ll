; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pageattr.c_walk_pud_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pageattr.c_walk_pud_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@PUD_MASK = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64)* @walk_pud_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_pud_level(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
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
  %15 = call i32* @pud_offset(i32* %13, i64 %14)
  store i32* %15, i32** %11, align 8
  br label %16

16:                                               ; preds = %76, %4
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pud_none(i32 %18)
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
  %27 = call i64 @pud_addr_end(i64 %25, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @pud_large(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @PUD_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = and i64 %33, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @PUD_SIZE, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* %10, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38, %32
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @split_pud_page(i32* %45, i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %78

51:                                               ; preds = %44
  br label %68

52:                                               ; preds = %38
  %53 = load i32*, i32** %11, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @modify_pud_page(i32* %53, i64 %54, i64 %55)
  br label %63

57:                                               ; preds = %24
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @walk_pmd_level(i32* %58, i64 %59, i64 %60, i64 %61)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %11, align 8
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %7, align 8
  %67 = call i32 (...) @cond_resched()
  br label %68

68:                                               ; preds = %63, %51
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %16, label %78

78:                                               ; preds = %76, %50
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %21
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i32 @split_pud_page(i32*, i64) #1

declare dso_local i32 @modify_pud_page(i32*, i64, i64) #1

declare dso_local i32 @walk_pmd_level(i32*, i64, i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
